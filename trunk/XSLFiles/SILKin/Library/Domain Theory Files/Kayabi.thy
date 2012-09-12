;;  Horn Clause Representation of Kayabi Kinship Term-of-Reference Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Kayabi") (author, "Helga Elizabeth Weiss") (date, "1985-01-01") (citation, "Helga Elizabeth Weiss in SOUTH AMERICAN KINSHIP pp. 113-122") 
(non_term, [aux], brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, false) (recursiveLevels, 2)
(overlaps, (kipi_it, (rikiet)), (kipi_iwen, (rikiewen)), (meneki_it, (menewiret)), (menewiret, (meneki_it)), (reki_irati, (rewirerati)), (reki_it, (rewiret)), (remirekoikiet, (remirekokipi_it)), (remirekokipi_it, (remirekoikiet)), (rewirerati, (reki_irati)), (rewiret, (reki_it)), (rikiet, (kipi_it)), (rikiewen, (kipi_iwen)))


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

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


even_gen[aux]23(Alter, Ego) :-  parent(A, Ego), generation[aux]23gs(A, B), child(Alter, B), gender(C, A), gender(C, B).
;; 0
%even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(E, C).
;; 1
%even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(E, C).
;; 2
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 3
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 4
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 5
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 6
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 7
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 8
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 9
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 10
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 11
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 12
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 13
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 14
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 15
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 16
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 17
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 18
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 19
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 20
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 21
%even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 22
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 23
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 24
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 25
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C).
;; 26
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 27
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 28
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 29
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 30
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 31
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 32
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 33
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 34
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 35
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 36
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 37
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 38
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 39
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 40
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C).
;; 41
%even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C).


generation[aux]23(Alter, Ego) :-  sibling(Alter, Ego).
                              |  [ext],  parents(A, Ego), generation[aux]23gs(B, A), child(Alter, B).
;; 0
%generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).


generation[aux]23gs(Alter, Ego) :-  siblings(Alter, Ego).
                                |  [ext],  parents(A, Ego), generation[aux]23gs(B, A), children(Alter, B).
;; 0
%generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter).
;; 2
%generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 3
%generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 4
%generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 5
%generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 6
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 7
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 8
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 9
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 10
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 11
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 12
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 13
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 14
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 15
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 16
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 17
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 18
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 19
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 20
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 21
%generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 22
%generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), son(Alter, D).
;; 23
%generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), daughter(Alter, D).
;; 24
%generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), son(Alter, D).
;; 25
%generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), daughter(Alter, D).
;; 26
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 27
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 28
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 29
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 30
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 31
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 32
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 33
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).
;; 34
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), son(Alter, F).
;; 35
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), daughter(Alter, F).
;; 36
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), son(Alter, F).
;; 37
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), daughter(Alter, F).
;; 38
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), son(Alter, F).
;; 39
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), daughter(Alter, F).
;; 40
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), son(Alter, F).
;; 41
%generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), daughter(Alter, F).


generation[aux]23small(Alter, Ego) :-  sibling(Alter, Ego).
                                   |  [ext],  parents(A, Ego), siblings(B, A), child(Alter, B).
;; 0
%generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).


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


i(Alter, Ego) :-  mother(Alter, Ego).
{"Mo"}
;; 0
%i:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Mo}  
 mother(Alter, Ego).


i_it(Alter, Ego) :-  mother(A, Ego), sister(Alter, A).
                 |  [ext],  mother(A, Ego), generation[aux]23(Alter, A), female(Alter).
{"MoFaBroDa_MoFaFaBroDaDa_MoFaFaBroSoDa_MoFaFaSisDaDa_MoFaFaSisSoDa_MoFaMoBroDaDa_MoFaMoBroSoDa_MoFaMoSisDaDa_MoFaMoSisSoDa_MoFaSisDa_MoMoBroDa_MoMoFaBroDaDa_MoMoFaBroSoDa_MoMoFaSisDaDa_MoMoFaSisSoDa_MoMoMoBroDaDa_MoMoMoBroSoDa_MoMoMoSisDaDa_MoMoMoSisSoDa_MoMoSisDa_MoSis"}
;; 0
%i_it:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%i_it:1, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoSis}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 3
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisDa}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 4
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 5
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 6
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 7
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 8
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 9
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 10
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 11
%i_it:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaDa}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 12
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 13
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisDa}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 14
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 15
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 16
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 17
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 18
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 19
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 20
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 21
%i_it:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaDa}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).


kipi_it(Alter, Ego) :-  rikiet(Ego, Alter).
{"FaBroDa_FaFaBroSoDa_FaFaFaBroDaSoDa_FaFaFaBroSoSoDa_FaFaFaSisDaSoDa_FaFaFaSisSoSoDa_FaFaMoBroDaSoDa_FaFaMoBroSoSoDa_FaFaMoSisDaSoDa_FaFaMoSisSoSoDa_FaFaSisSoDa_FaMoBroSoDa_FaMoFaBroDaSoDa_FaMoFaBroSoSoDa_FaMoFaSisDaSoDa_FaMoFaSisSoSoDa_FaMoMoBroDaSoDa_FaMoMoBroSoSoDa_FaMoMoSisDaSoDa_FaMoMoSisSoSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroSoDaDa_MoFaFaSisDaDaDa_MoFaFaSisSoDaDa_MoFaMoBroDaDaDa_MoFaMoBroSoDaDa_MoFaMoSisDaDaDa_MoFaMoSisSoDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoFaBroDaDaDa_MoMoFaBroSoDaDa_MoMoFaSisDaDaDa_MoMoFaSisSoDaDa_MoMoMoBroDaDaDa_MoMoMoBroSoDaDa_MoMoMoSisDaDaDa_MoMoMoSisSoDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%kipi_it:0, rikiet:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Alter), father(B, Alter), child(Ego, A), child(Ego, B), not(equal(Ego, Alter)), female(Ego), female(Alter), elder(Ego, Alter).
;; 1
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Ego, C), gender(E, A), gender(E, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 2
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Ego, C), gender(E, A), gender(E, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 3
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 4
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 5
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 6
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 7
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 8
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 9
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 10
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 11
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 12
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 13
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 14
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 15
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 16
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 17
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 18
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 19
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 20
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 21
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 22
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 23
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 24
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 25
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 26
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 27
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 28
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 29
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 30
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 31
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 32
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 33
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 34
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 35
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 36
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 37
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 38
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 39
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 40
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 41
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).
;; 42
%kipi_it:0, rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), female(Alter), female(Ego), elder(Ego, Alter).


kipi_iwen(Alter, Ego) :-  female(Ego), sister(A, Ego), younger(A, Ego), husband(Alter, A).
                      |  [ext],  female(Ego), even_gen[aux]23(A, Ego), younger(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaSisSoDaHu_FaMoBroSoDaHu_FaMoSisSoDaHu_MoFaBroDaDaHu_MoFaSisDaDaHu_MoMoBroDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu"}
;; 0
%kipi_iwen:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), younger(C, Ego), husband(Alter, C).
;; 1
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), younger(E, Ego), husband(Alter, E).
;; 2
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), younger(E, Ego), husband(Alter, E).
;; 3
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 4
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 5
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 6
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 7
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 8
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 9
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).
;; 10
%kipi_iwen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), husband(Alter, G).


kiwit(Alter, Ego) :-  female(Ego), brother(Alter, Ego).
                  |  [ext],  female(Ego), even_gen[aux]23(Alter, Ego), male(Alter).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaSisSoSo_FaMoBroSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaSisDaSo_MoMoBroDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%kiwit:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 female(Ego), mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter).
;; 1
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(E, C), male(Alter).
;; 2
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(E, C), male(Alter).
;; 3
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 4
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 5
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 6
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 7
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 8
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 9
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).
;; 10
%kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Alter).


memitati(Alter, Ego) :-  female(Ego), son(A, Ego), wife(Alter, A).
                     |  [ext],  female(Ego), generation[aux]23(A, Ego), female(A), son(B, A), wife(Alter, B).
{"FaBroDaSoWi_FaFaBroDaDaSoWi_FaFaBroSoDaSoWi_FaFaFaBroDaDaDaSoWi_FaFaFaBroDaSoDaSoWi_FaFaFaBroSoDaDaSoWi_FaFaFaBroSoSoDaSoWi_FaFaFaSisDaDaDaSoWi_FaFaFaSisDaSoDaSoWi_FaFaFaSisSoDaDaSoWi_FaFaFaSisSoSoDaSoWi_FaFaMoBroDaDaDaSoWi_FaFaMoBroDaSoDaSoWi_FaFaMoBroSoDaDaSoWi_FaFaMoBroSoSoDaSoWi_FaFaMoSisDaDaDaSoWi_FaFaMoSisDaSoDaSoWi_FaFaMoSisSoDaDaSoWi_FaFaMoSisSoSoDaSoWi_FaFaSisDaDaSoWi_FaFaSisSoDaSoWi_FaMoBroDaDaSoWi_FaMoBroSoDaSoWi_FaMoFaBroDaDaDaSoWi_FaMoFaBroDaSoDaSoWi_FaMoFaBroSoDaDaSoWi_FaMoFaBroSoSoDaSoWi_FaMoFaSisDaDaDaSoWi_FaMoFaSisDaSoDaSoWi_FaMoFaSisSoDaDaSoWi_FaMoFaSisSoSoDaSoWi_FaMoMoBroDaDaDaSoWi_FaMoMoBroDaSoDaSoWi_FaMoMoBroSoDaDaSoWi_FaMoMoBroSoSoDaSoWi_FaMoMoSisDaDaDaSoWi_FaMoMoSisDaSoDaSoWi_FaMoMoSisSoDaDaSoWi_FaMoMoSisSoSoDaSoWi_FaMoSisDaDaSoWi_FaMoSisSoDaSoWi_FaSisDaSoWi_MoBroDaSoWi_MoFaBroDaDaSoWi_MoFaBroSoDaSoWi_MoFaFaBroDaDaDaSoWi_MoFaFaBroDaSoDaSoWi_MoFaFaBroSoDaDaSoWi_MoFaFaBroSoSoDaSoWi_MoFaFaSisDaDaDaSoWi_MoFaFaSisDaSoDaSoWi_MoFaFaSisSoDaDaSoWi_MoFaFaSisSoSoDaSoWi_MoFaMoBroDaDaDaSoWi_MoFaMoBroDaSoDaSoWi_MoFaMoBroSoDaDaSoWi_MoFaMoBroSoSoDaSoWi_MoFaMoSisDaDaDaSoWi_MoFaMoSisDaSoDaSoWi_MoFaMoSisSoDaDaSoWi_MoFaMoSisSoSoDaSoWi_MoFaSisDaDaSoWi_MoFaSisSoDaSoWi_MoMoBroDaDaSoWi_MoMoBroSoDaSoWi_MoMoFaBroDaDaDaSoWi_MoMoFaBroDaSoDaSoWi_MoMoFaBroSoDaDaSoWi_MoMoFaBroSoSoDaSoWi_MoMoFaSisDaDaDaSoWi_MoMoFaSisDaSoDaSoWi_MoMoFaSisSoDaDaSoWi_MoMoFaSisSoSoDaSoWi_MoMoMoBroDaDaDaSoWi_MoMoMoBroDaSoDaSoWi_MoMoMoBroSoDaDaSoWi_MoMoMoBroSoSoDaSoWi_MoMoMoSisDaDaDaSoWi_MoMoMoSisDaSoDaSoWi_MoMoMoSisSoDaDaSoWi_MoMoMoSisSoSoDaSoWi_MoMoSisDaDaSoWi_MoMoSisSoDaSoWi_MoSisDaSoWi_SisSoWi_SoWi"}
;; 0
%memitati:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {SoWi}  
 female(Ego), son(A, Ego), wife(Alter, A).
;; 1
%memitati:1, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisSoWi}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(D, C), wife(Alter, D).
;; 2
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaSoWi}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(F, E), wife(Alter, F).
;; 3
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaSoWi}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(F, E), wife(Alter, F).
;; 4
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 5
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 6
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 7
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 8
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 9
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 10
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 11
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 12
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 13
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 14
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 15
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 16
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 17
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 18
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 19
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 20
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 21
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 22
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 23
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 24
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 25
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 26
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 27
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 28
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 29
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 30
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 31
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 32
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 33
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 34
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 35
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 36
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 37
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 38
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 39
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 40
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 41
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 42
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 43
%memitati:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 44
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaSoWi}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(F, E), wife(Alter, F).
;; 45
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaSoWi}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(F, E), wife(Alter, F).
;; 46
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 47
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 48
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 49
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 50
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 51
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 52
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 53
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 54
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 55
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 56
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 57
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 58
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 59
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 60
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 61
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 62
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 63
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 64
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 65
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 66
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 67
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 68
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 69
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaSoWi}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(H, G), wife(Alter, H).
;; 70
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 71
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 72
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 73
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 74
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 75
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 76
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 77
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 78
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 79
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 80
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 81
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 82
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisSoSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 83
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisSoDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 84
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisDaSoDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).
;; 85
%memitati:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisDaDaDaSoWi}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(J, I), wife(Alter, J).


men(Alter, Ego) :-  husband(Alter, Ego).
{"Hu"}
;; 0
%men:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Hu}  
 husband(Alter, Ego).


meneki_it(Alter, Ego) :-  husband(A, Ego), brother(Alter, A), elder(Alter, A).
                      |  [ext],  husband(A, Ego), even_gen[aux]23(Alter, A), male(Alter), elder(Alter, A).
{"HuBro_HuFaBroSo_HuFaFaBroSoSo_HuFaFaSisSoSo_HuFaMoBroSoSo_HuFaMoSisSoSo_HuMoFaBroDaSo_HuMoFaSisDaSo_HuMoMoBroDaSo_HuMoMoSisDaSo_HuMoSisSo"}
;; 0
%meneki_it:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), elder(Alter, A).
;; 1
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter), elder(Alter, A).
;; 2
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter), elder(Alter, A).
;; 3
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 4
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 5
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 6
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 7
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 8
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 9
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).
;; 10
%meneki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), elder(Alter, A).


menewiret(Alter, Ego) :-  husband(A, Ego), brother(Alter, A), younger(Alter, A).
                      |  [ext],  husband(A, Ego), even_gen[aux]23(Alter, A), male(Alter), younger(Alter, A).
{"HuBro_HuFaBroSo_HuFaFaBroSoSo_HuFaFaSisSoSo_HuFaMoBroSoSo_HuFaMoSisSoSo_HuMoFaBroDaSo_HuMoFaSisDaSo_HuMoMoBroDaSo_HuMoMoSisDaSo_HuMoSisSo"}
;; 0
%menewiret:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuBro}  
 husband(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter), younger(Alter, A).
;; 1
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter), younger(Alter, A).
;; 2
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisSo}  
[ext],  husband(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter), younger(Alter, A).
;; 3
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 4
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 5
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 6
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 7
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 8
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 9
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).
;; 10
%menewiret:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaSo}  
[ext], [ext],  husband(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter), younger(Alter, A).


meni(Alter, Ego) :-  husband(A, Ego), mother(Alter, A).
                 |  [ext],  husband(A, Ego), mother(B, A), sister(Alter, B).
                 |  [ext],  husband(A, Ego), mother(B, A), even_gen[aux]23(Alter, B), female(Alter).
                 |  [ext],  husband(A, Ego), mother(B, A), brother(C, B), wife(Alter, C).
                 |  [ext],  husband(A, Ego), mother(B, A), even_gen[aux]23(C, B), wife(Alter, C).
{"HuMo_HuMoBroWi_HuMoFaBroDa_HuMoFaBroSoWi_HuMoFaFaBroSoDa_HuMoFaFaBroSoSoWi_HuMoFaFaSisSoDa_HuMoFaFaSisSoSoWi_HuMoFaMoBroSoDa_HuMoFaMoBroSoSoWi_HuMoFaMoSisSoDa_HuMoFaMoSisSoSoWi_HuMoMoFaBroDaDa_HuMoMoFaBroDaSoWi_HuMoMoFaSisDaDa_HuMoMoFaSisDaSoWi_HuMoMoMoBroDaDa_HuMoMoMoBroDaSoWi_HuMoMoMoSisDaDa_HuMoMoMoSisDaSoWi_HuMoMoSisDa_HuMoMoSisSoWi_HuMoSis"}
;; 0
%meni:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuMo}  
 husband(A, Ego), mother(Alter, A).
;; 1
%meni:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuMoSis}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%meni:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoFaBroDa}  
[ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(Alter, E), gender(G, C), gender(G, E), female(Alter).
;; 3
%meni:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuMoMoSisDa}  
[ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(Alter, E), gender(G, C), gender(G, E), female(Alter).
;; 4
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaFaSisSoDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 5
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoFaSisDaDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 6
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaMoSisSoDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 7
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoMoSisDaDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 8
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaFaBroSoDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 9
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoFaBroDaDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 10
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoFaMoBroSoDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 11
%meni:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuMoMoMoBroDaDa}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 12
%meni:3, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuMoBroWi}  
[ext],  husband(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 13
%meni:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoFaBroSoWi}  
[ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(G, E), gender(H, C), gender(H, E), wife(Alter, G).
;; 14
%meni:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuMoMoSisSoWi}  
[ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(G, E), gender(H, C), gender(H, E), wife(Alter, G).
;; 15
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoFaFaSisSoSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 16
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoMoFaSisDaSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 17
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoFaMoSisSoSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 18
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoMoMoSisDaSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 19
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoFaFaBroSoSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 20
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoMoFaBroDaSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 21
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoFaMoBroSoSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 22
%meni:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuMoMoMoBroDaSoWi}  
[ext], [ext],  husband(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).


menup(Alter, Ego) :-  husband(A, Ego), father(Alter, A).
                  |  [ext],  husband(A, Ego), father(B, A), brother(Alter, B).
                  |  [ext],  husband(A, Ego), father(B, A), even_gen[aux]23(Alter, B), male(Alter).
                  |  [ext],  husband(A, Ego), father(B, A), sister(C, B), husband(Alter, C).
                  |  [ext],  husband(A, Ego), father(B, A), even_gen[aux]23(C, B), husband(Alter, C).
{"HuFa_HuFaBro_HuFaFaBroDaHu_HuFaFaBroSo_HuFaFaFaBroSoDaHu_HuFaFaFaBroSoSo_HuFaFaFaSisSoDaHu_HuFaFaFaSisSoSo_HuFaFaMoBroSoDaHu_HuFaFaMoBroSoSo_HuFaFaMoSisSoDaHu_HuFaFaMoSisSoSo_HuFaMoFaBroDaDaHu_HuFaMoFaBroDaSo_HuFaMoFaSisDaDaHu_HuFaMoFaSisDaSo_HuFaMoMoBroDaDaHu_HuFaMoMoBroDaSo_HuFaMoMoSisDaDaHu_HuFaMoMoSisDaSo_HuFaMoSisDaHu_HuFaMoSisSo_HuFaSisHu"}
;; 0
%menup:0%
 Lvl=1,  PC=1, S=1, Star=0,  {HuFa}  
 husband(A, Ego), father(Alter, A).
;; 1
%menup:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {HuFaBro}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%menup:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaFaBroSo}  
[ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(Alter, E), gender(G, C), gender(G, E), male(Alter).
;; 3
%menup:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {HuFaMoSisSo}  
[ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(Alter, E), gender(G, C), gender(G, E), male(Alter).
;; 4
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaFaSisSoSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 5
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoFaSisDaSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 6
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaMoSisSoSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 7
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoMoSisDaSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 8
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaFaBroSoSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 9
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoFaBroDaSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 10
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaFaMoBroSoSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 11
%menup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {HuFaMoMoBroDaSo}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 12
%menup:3, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {HuFaSisHu}  
[ext],  husband(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 13
%menup:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaFaBroDaHu}  
[ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(G, E), gender(H, C), gender(H, E), husband(Alter, G).
;; 14
%menup:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {HuFaMoSisDaHu}  
[ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(G, E), gender(H, C), gender(H, E), husband(Alter, G).
;; 15
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaFaFaSisSoDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 16
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaMoFaSisDaDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 17
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaFaMoSisSoDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 18
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaMoMoSisDaDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 19
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaFaFaBroSoDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 20
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaMoFaBroDaDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 21
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaFaMoBroSoDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 22
%menup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {HuFaMoMoBroDaDaHu}  
[ext], [ext],  husband(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).


odd_gen[aux]23(Alter, Ego) :-  parent(A, Ego), generation[aux]23gs(A, B), child(Alter, B), gender(C, A), gender(D, B), not(equal(C, D)).
;; 0
%odd_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 1
%odd_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)).
;; 2
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 3
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 4
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 5
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 6
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 7
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 8
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 9
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 10
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 11
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 12
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 13
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 14
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 15
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 16
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 17
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 18
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 19
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 20
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 21
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 22
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 23
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 24
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 25
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)).
;; 26
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 27
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 28
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 29
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 30
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 31
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 32
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 33
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 34
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 35
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 36
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 37
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 38
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 39
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 40
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).
;; 41
%odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)).


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


peng(Alter, Ego) :-  yaye(Ego, Alter).
{"BroDa_BroSo_FaBroSoDa_FaBroSoSo_FaFaBroDaSoDa_FaFaBroDaSoSo_FaFaBroSoSoDa_FaFaBroSoSoSo_FaFaSisDaSoDa_FaFaSisDaSoSo_FaFaSisSoSoDa_FaFaSisSoSoSo_FaMoBroDaSoDa_FaMoBroDaSoSo_FaMoBroSoSoDa_FaMoBroSoSoSo_FaMoSisDaSoDa_FaMoSisDaSoSo_FaMoSisSoSoDa_FaMoSisSoSoSo_FaSisSoDa_FaSisSoSo_MoBroSoDa_MoBroSoSo_MoFaBroDaSoDa_MoFaBroDaSoSo_MoFaBroSoSoDa_MoFaBroSoSoSo_MoFaSisDaSoDa_MoFaSisDaSoSo_MoFaSisSoSoDa_MoFaSisSoSoSo_MoMoBroDaSoDa_MoMoBroDaSoSo_MoMoBroSoSoDa_MoMoBroSoSoSo_MoMoSisDaSoDa_MoMoSisDaSoSo_MoMoSisSoSoDa_MoMoSisSoSoSo_MoSisSoDa_MoSisSoSo"}
;; 0
%peng:0, yaye:0, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
 male(Alter), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego).
;; 1
%peng:0, yaye:1, sister:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
 female(Alter), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego).
;; 2
%peng:0, yaye:2, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Alter), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego).
;; 3
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), female(Ego).
;; 4
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), female(Ego).
;; 5
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 6
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 7
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 8
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 9
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 10
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 11
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 12
%peng:0, yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 13
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), female(Ego).
;; 14
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), female(Ego).
;; 15
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 16
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 17
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 18
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 19
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 20
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 21
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 22
%peng:0, yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext], [ext], [ext],  male(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 23
%peng:0, yaye:3, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  female(Alter), father(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), female(Ego).
;; 24
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), female(Ego).
;; 25
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), female(Ego).
;; 26
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 27
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 28
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 29
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 30
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 31
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 32
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 33
%peng:0, yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 34
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), female(Ego).
;; 35
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), female(Ego).
;; 36
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 37
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 38
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 39
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).
;; 40
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), female(Ego).
;; 41
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), female(Ego).
;; 42
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), female(Ego).
;; 43
%peng:0, yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), female(Ego).


peum(Alter, Ego) :-  female(Ego), daughter(A, Ego), spouse(Alter, A).
                 |  [ext],  female(Ego), generation[aux]23(A, Ego), female(A), daughter(B, A), husband(Alter, B).
{"DaHu_FaBroDaDaHu_FaFaBroDaDaDaHu_FaFaBroSoDaDaHu_FaFaFaBroDaDaDaDaHu_FaFaFaBroDaSoDaDaHu_FaFaFaBroSoDaDaDaHu_FaFaFaBroSoSoDaDaHu_FaFaFaSisDaDaDaDaHu_FaFaFaSisDaSoDaDaHu_FaFaFaSisSoDaDaDaHu_FaFaFaSisSoSoDaDaHu_FaFaMoBroDaDaDaDaHu_FaFaMoBroDaSoDaDaHu_FaFaMoBroSoDaDaDaHu_FaFaMoBroSoSoDaDaHu_FaFaMoSisDaDaDaDaHu_FaFaMoSisDaSoDaDaHu_FaFaMoSisSoDaDaDaHu_FaFaMoSisSoSoDaDaHu_FaFaSisDaDaDaHu_FaFaSisSoDaDaHu_FaMoBroDaDaDaHu_FaMoBroSoDaDaHu_FaMoFaBroDaDaDaDaHu_FaMoFaBroDaSoDaDaHu_FaMoFaBroSoDaDaDaHu_FaMoFaBroSoSoDaDaHu_FaMoFaSisDaDaDaDaHu_FaMoFaSisDaSoDaDaHu_FaMoFaSisSoDaDaDaHu_FaMoFaSisSoSoDaDaHu_FaMoMoBroDaDaDaDaHu_FaMoMoBroDaSoDaDaHu_FaMoMoBroSoDaDaDaHu_FaMoMoBroSoSoDaDaHu_FaMoMoSisDaDaDaDaHu_FaMoMoSisDaSoDaDaHu_FaMoMoSisSoDaDaDaHu_FaMoMoSisSoSoDaDaHu_FaMoSisDaDaDaHu_FaMoSisSoDaDaHu_FaSisDaDaHu_MoBroDaDaHu_MoFaBroDaDaDaHu_MoFaBroSoDaDaHu_MoFaFaBroDaDaDaDaHu_MoFaFaBroDaSoDaDaHu_MoFaFaBroSoDaDaDaHu_MoFaFaBroSoSoDaDaHu_MoFaFaSisDaDaDaDaHu_MoFaFaSisDaSoDaDaHu_MoFaFaSisSoDaDaDaHu_MoFaFaSisSoSoDaDaHu_MoFaMoBroDaDaDaDaHu_MoFaMoBroDaSoDaDaHu_MoFaMoBroSoDaDaDaHu_MoFaMoBroSoSoDaDaHu_MoFaMoSisDaDaDaDaHu_MoFaMoSisDaSoDaDaHu_MoFaMoSisSoDaDaDaHu_MoFaMoSisSoSoDaDaHu_MoFaSisDaDaDaHu_MoFaSisSoDaDaHu_MoMoBroDaDaDaHu_MoMoBroSoDaDaHu_MoMoFaBroDaDaDaDaHu_MoMoFaBroDaSoDaDaHu_MoMoFaBroSoDaDaDaHu_MoMoFaBroSoSoDaDaHu_MoMoFaSisDaDaDaDaHu_MoMoFaSisDaSoDaDaHu_MoMoFaSisSoDaDaDaHu_MoMoFaSisSoSoDaDaHu_MoMoMoBroDaDaDaDaHu_MoMoMoBroDaSoDaDaHu_MoMoMoBroSoDaDaDaHu_MoMoMoBroSoSoDaDaHu_MoMoMoSisDaDaDaDaHu_MoMoMoSisDaSoDaDaHu_MoMoMoSisSoDaDaDaHu_MoMoMoSisSoSoDaDaHu_MoMoSisDaDaDaHu_MoMoSisSoDaDaHu_MoSisDaDaHu_SisDaHu"}
;; 0
%peum:0%
 Lvl=-1,  PC=1, S=1, Star=0,  {DaHu}  
 female(Ego), daughter(A, Ego), spouse(Alter, A).
;; 1
%peum:1, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=1, Star=0,  {SisDaHu}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(D, C), husband(Alter, D).
;; 2
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoBroDaDaHu}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(F, E), husband(Alter, F).
;; 3
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {MoSisDaDaHu}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(F, E), husband(Alter, F).
;; 4
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 5
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoBroDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 6
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 7
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoMoSisDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 8
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 9
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 10
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 11
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 12
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 13
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 14
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 15
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoMoSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 16
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 17
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 18
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 19
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 20
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 21
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 22
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 23
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoMoFaSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 24
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 25
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaBroDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 26
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 27
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {MoFaSisDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 28
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 29
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 30
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 31
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 32
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 33
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 34
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 35
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaMoSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 36
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 37
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 38
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 39
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 40
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 41
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 42
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 43
%peum:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {MoFaFaSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 44
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaBroDaDaHu}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(F, E), husband(Alter, F).
;; 45
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=1, Star=0,  {FaSisDaDaHu}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(F, E), husband(Alter, F).
;; 46
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 47
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoBroDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 48
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 49
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaMoSisDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 50
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 51
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 52
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 53
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 54
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 55
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 56
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 57
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoMoSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 58
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 59
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 60
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 61
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 62
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 63
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 64
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 65
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaMoFaSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 66
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 67
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaBroDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 68
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisSoDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 69
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=1, Star=0,  {FaFaSisDaDaDaHu}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(H, G), husband(Alter, H).
;; 70
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 71
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 72
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 73
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 74
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 75
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 76
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 77
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaMoSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 78
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 79
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 80
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 81
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaBroDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 82
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisSoSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 83
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisSoDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 84
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisDaSoDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).
;; 85
%peum:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=1, Star=0,  {FaFaFaSisDaDaDaDaHu}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(J, I), husband(Alter, J).


ra_it(Alter, Ego) :-  female(Ego), children(Alter, Ego).
                  |   male(Ego), son(Alter, Ego).
                  |  [ext],  male(Ego), generation[aux]23(A, Ego), male(A), son(Alter, A).
                  |  [ext],  female(Ego), generation[aux]23(A, Ego), female(A), children(Alter, A).
{"BroSo_Da_FaBroDaDa_FaBroDaSo_FaBroSoSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroDaSoSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaBroSoSoSo_FaFaFaBroDaDaDaDa_FaFaFaBroDaDaDaSo_FaFaFaBroDaDaSoSo_FaFaFaBroDaSoDaDa_FaFaFaBroDaSoDaSo_FaFaFaBroDaSoSoSo_FaFaFaBroSoDaDaDa_FaFaFaBroSoDaDaSo_FaFaFaBroSoDaSoSo_FaFaFaBroSoSoDaDa_FaFaFaBroSoSoDaSo_FaFaFaBroSoSoSoSo_FaFaFaSisDaDaDaDa_FaFaFaSisDaDaDaSo_FaFaFaSisDaDaSoSo_FaFaFaSisDaSoDaDa_FaFaFaSisDaSoDaSo_FaFaFaSisDaSoSoSo_FaFaFaSisSoDaDaDa_FaFaFaSisSoDaDaSo_FaFaFaSisSoDaSoSo_FaFaFaSisSoSoDaDa_FaFaFaSisSoSoDaSo_FaFaFaSisSoSoSoSo_FaFaMoBroDaDaDaDa_FaFaMoBroDaDaDaSo_FaFaMoBroDaDaSoSo_FaFaMoBroDaSoDaDa_FaFaMoBroDaSoDaSo_FaFaMoBroDaSoSoSo_FaFaMoBroSoDaDaDa_FaFaMoBroSoDaDaSo_FaFaMoBroSoDaSoSo_FaFaMoBroSoSoDaDa_FaFaMoBroSoSoDaSo_FaFaMoBroSoSoSoSo_FaFaMoSisDaDaDaDa_FaFaMoSisDaDaDaSo_FaFaMoSisDaDaSoSo_FaFaMoSisDaSoDaDa_FaFaMoSisDaSoDaSo_FaFaMoSisDaSoSoSo_FaFaMoSisSoDaDaDa_FaFaMoSisSoDaDaSo_FaFaMoSisSoDaSoSo_FaFaMoSisSoSoDaDa_FaFaMoSisSoSoDaSo_FaFaMoSisSoSoSoSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisDaSoSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaFaSisSoSoSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroDaSoSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoBroSoSoSo_FaMoFaBroDaDaDaDa_FaMoFaBroDaDaDaSo_FaMoFaBroDaDaSoSo_FaMoFaBroDaSoDaDa_FaMoFaBroDaSoDaSo_FaMoFaBroDaSoSoSo_FaMoFaBroSoDaDaDa_FaMoFaBroSoDaDaSo_FaMoFaBroSoDaSoSo_FaMoFaBroSoSoDaDa_FaMoFaBroSoSoDaSo_FaMoFaBroSoSoSoSo_FaMoFaSisDaDaDaDa_FaMoFaSisDaDaDaSo_FaMoFaSisDaDaSoSo_FaMoFaSisDaSoDaDa_FaMoFaSisDaSoDaSo_FaMoFaSisDaSoSoSo_FaMoFaSisSoDaDaDa_FaMoFaSisSoDaDaSo_FaMoFaSisSoDaSoSo_FaMoFaSisSoSoDaDa_FaMoFaSisSoSoDaSo_FaMoFaSisSoSoSoSo_FaMoMoBroDaDaDaDa_FaMoMoBroDaDaDaSo_FaMoMoBroDaDaSoSo_FaMoMoBroDaSoDaDa_FaMoMoBroDaSoDaSo_FaMoMoBroDaSoSoSo_FaMoMoBroSoDaDaDa_FaMoMoBroSoDaDaSo_FaMoMoBroSoDaSoSo_FaMoMoBroSoSoDaDa_FaMoMoBroSoSoDaSo_FaMoMoBroSoSoSoSo_FaMoMoSisDaDaDaDa_FaMoMoSisDaDaDaSo_FaMoMoSisDaDaSoSo_FaMoMoSisDaSoDaDa_FaMoMoSisDaSoDaSo_FaMoMoSisDaSoSoSo_FaMoMoSisSoDaDaDa_FaMoMoSisSoDaDaSo_FaMoMoSisSoDaSoSo_FaMoMoSisSoSoDaDa_FaMoMoSisSoSoDaSo_FaMoMoSisSoSoSoSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisDaSoSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaMoSisSoSoSo_FaSisDaDa_FaSisDaSo_FaSisSoSo_MoBroDaDa_MoBroDaSo_MoBroSoSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroDaSoSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaBroSoSoSo_MoFaFaBroDaDaDaDa_MoFaFaBroDaDaDaSo_MoFaFaBroDaDaSoSo_MoFaFaBroDaSoDaDa_MoFaFaBroDaSoDaSo_MoFaFaBroDaSoSoSo_MoFaFaBroSoDaDaDa_MoFaFaBroSoDaDaSo_MoFaFaBroSoDaSoSo_MoFaFaBroSoSoDaDa_MoFaFaBroSoSoDaSo_MoFaFaBroSoSoSoSo_MoFaFaSisDaDaDaDa_MoFaFaSisDaDaDaSo_MoFaFaSisDaDaSoSo_MoFaFaSisDaSoDaDa_MoFaFaSisDaSoDaSo_MoFaFaSisDaSoSoSo_MoFaFaSisSoDaDaDa_MoFaFaSisSoDaDaSo_MoFaFaSisSoDaSoSo_MoFaFaSisSoSoDaDa_MoFaFaSisSoSoDaSo_MoFaFaSisSoSoSoSo_MoFaMoBroDaDaDaDa_MoFaMoBroDaDaDaSo_MoFaMoBroDaDaSoSo_MoFaMoBroDaSoDaDa_MoFaMoBroDaSoDaSo_MoFaMoBroDaSoSoSo_MoFaMoBroSoDaDaDa_MoFaMoBroSoDaDaSo_MoFaMoBroSoDaSoSo_MoFaMoBroSoSoDaDa_MoFaMoBroSoSoDaSo_MoFaMoBroSoSoSoSo_MoFaMoSisDaDaDaDa_MoFaMoSisDaDaDaSo_MoFaMoSisDaDaSoSo_MoFaMoSisDaSoDaDa_MoFaMoSisDaSoDaSo_MoFaMoSisDaSoSoSo_MoFaMoSisSoDaDaDa_MoFaMoSisSoDaDaSo_MoFaMoSisSoDaSoSo_MoFaMoSisSoSoDaDa_MoFaMoSisSoSoDaSo_MoFaMoSisSoSoSoSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisDaSoSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoFaSisSoSoSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroDaSoSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoBroSoSoSo_MoMoFaBroDaDaDaDa_MoMoFaBroDaDaDaSo_MoMoFaBroDaDaSoSo_MoMoFaBroDaSoDaDa_MoMoFaBroDaSoDaSo_MoMoFaBroDaSoSoSo_MoMoFaBroSoDaDaDa_MoMoFaBroSoDaDaSo_MoMoFaBroSoDaSoSo_MoMoFaBroSoSoDaDa_MoMoFaBroSoSoDaSo_MoMoFaBroSoSoSoSo_MoMoFaSisDaDaDaDa_MoMoFaSisDaDaDaSo_MoMoFaSisDaDaSoSo_MoMoFaSisDaSoDaDa_MoMoFaSisDaSoDaSo_MoMoFaSisDaSoSoSo_MoMoFaSisSoDaDaDa_MoMoFaSisSoDaDaSo_MoMoFaSisSoDaSoSo_MoMoFaSisSoSoDaDa_MoMoFaSisSoSoDaSo_MoMoFaSisSoSoSoSo_MoMoMoBroDaDaDaDa_MoMoMoBroDaDaDaSo_MoMoMoBroDaDaSoSo_MoMoMoBroDaSoDaDa_MoMoMoBroDaSoDaSo_MoMoMoBroDaSoSoSo_MoMoMoBroSoDaDaDa_MoMoMoBroSoDaDaSo_MoMoMoBroSoDaSoSo_MoMoMoBroSoSoDaDa_MoMoMoBroSoSoDaSo_MoMoMoBroSoSoSoSo_MoMoMoSisDaDaDaDa_MoMoMoSisDaDaDaSo_MoMoMoSisDaDaSoSo_MoMoMoSisDaSoDaDa_MoMoMoSisDaSoDaSo_MoMoMoSisDaSoSoSo_MoMoMoSisSoDaDaDa_MoMoMoSisSoDaDaSo_MoMoMoSisSoDaSoSo_MoMoMoSisSoSoDaDa_MoMoMoSisSoSoDaSo_MoMoMoSisSoSoSoSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisDaSoSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoMoSisSoSoSo_MoSisDaDa_MoSisDaSo_MoSisSoSo_SisDa_SisSo_So"}
;; 0
%ra_it:0, children:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 female(Ego), son(Alter, Ego).
;; 1
%ra_it:0, children:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 female(Ego), daughter(Alter, Ego).
;; 2
%ra_it:1%
 Lvl=-1,  PC=1, S=0, Star=0,  {So}  
 male(Ego), son(Alter, Ego).
;; 3
%ra_it:2, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroSo}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), son(Alter, C).
;; 4
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoSo}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 5
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoSo}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 6
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 7
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 8
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 9
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 10
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 11
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 12
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 13
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 14
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 15
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 16
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 17
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 18
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 19
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 20
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 21
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 22
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 23
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 24
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 25
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 26
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 27
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 28
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 29
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 30
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 31
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 32
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 33
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 34
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 35
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 36
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 37
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 38
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 39
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 40
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 41
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 42
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 43
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 44
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 45
%ra_it:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 46
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoSo}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), son(Alter, E).
;; 47
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoSo}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), son(Alter, E).
;; 48
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 49
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 50
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 51
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 52
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 53
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 54
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 55
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 56
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 57
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 58
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 59
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 60
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 61
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 62
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 63
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 64
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 65
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 66
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 67
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 68
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 69
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 70
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), son(Alter, G).
;; 71
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoSo}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), son(Alter, G).
;; 72
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 73
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 74
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 75
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 76
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 77
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 78
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 79
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 80
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 81
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 82
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 83
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 84
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 85
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 86
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), son(Alter, I).
;; 87
%ra_it:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoSo}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), son(Alter, I).
;; 88
%ra_it:3, generation[aux]23:0, sibling:0, children:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), son(Alter, C).
;; 89
%ra_it:3, generation[aux]23:0, sibling:0, children:1%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), daughter(Alter, C).
;; 90
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 91
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 92
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 93
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 94
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 95
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 96
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 97
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 98
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 99
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 100
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 101
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 102
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 103
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 104
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 105
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 106
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 107
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 108
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 109
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 110
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 111
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 112
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 113
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 114
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 115
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 116
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 117
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 118
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 119
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 120
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 121
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 122
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 123
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 124
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 125
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 126
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 127
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 128
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 129
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 130
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 131
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 132
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 133
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 134
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 135
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 136
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 137
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 138
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 139
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 140
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 141
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 142
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 143
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 144
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 145
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 146
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 147
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 148
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 149
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 150
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 151
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 152
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 153
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 154
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 155
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 156
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 157
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 158
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 159
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 160
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 161
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 162
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 163
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 164
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 165
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 166
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 167
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 168
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 169
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 170
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 171
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 172
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 173
%ra_it:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 174
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), son(Alter, E).
;; 175
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), female(E), daughter(Alter, E).
;; 176
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), son(Alter, E).
;; 177
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), female(E), daughter(Alter, E).
;; 178
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 179
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 180
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 181
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 182
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 183
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 184
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 185
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 186
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 187
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 188
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 189
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 190
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 191
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 192
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 193
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 194
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 195
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 196
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 197
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 198
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 199
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 200
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 201
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 202
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 203
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 204
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 205
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 206
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 207
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 208
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 209
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 210
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 211
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 212
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 213
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 214
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 215
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 216
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 217
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 218
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 219
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 220
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 221
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 222
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), son(Alter, G).
;; 223
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), female(G), daughter(Alter, G).
;; 224
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), son(Alter, G).
;; 225
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), female(G), daughter(Alter, G).
;; 226
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 227
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 228
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 229
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 230
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 231
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 232
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 233
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 234
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 235
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 236
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 237
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 238
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 239
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 240
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 241
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 242
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 243
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 244
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 245
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 246
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 247
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 248
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 249
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 250
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 251
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 252
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 253
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).
;; 254
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), son(Alter, I).
;; 255
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), female(I), daughter(Alter, I).
;; 256
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaSo}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), son(Alter, I).
;; 257
%ra_it:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaDaDa}  
[ext], [ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), female(I), daughter(Alter, I).


ra_yit(Alter, Ego) :-  male(Ego), daughter(Alter, Ego).
                   |  [ext],  male(Ego), generation[aux]23(A, Ego), male(A), daughter(Alter, A).
{"BroDa_Da_FaBroSoDa_FaFaBroDaSoDa_FaFaBroSoSoDa_FaFaFaBroDaDaSoDa_FaFaFaBroDaSoSoDa_FaFaFaBroSoDaSoDa_FaFaFaBroSoSoSoDa_FaFaFaSisDaDaSoDa_FaFaFaSisDaSoSoDa_FaFaFaSisSoDaSoDa_FaFaFaSisSoSoSoDa_FaFaMoBroDaDaSoDa_FaFaMoBroDaSoSoDa_FaFaMoBroSoDaSoDa_FaFaMoBroSoSoSoDa_FaFaMoSisDaDaSoDa_FaFaMoSisDaSoSoDa_FaFaMoSisSoDaSoDa_FaFaMoSisSoSoSoDa_FaFaSisDaSoDa_FaFaSisSoSoDa_FaMoBroDaSoDa_FaMoBroSoSoDa_FaMoFaBroDaDaSoDa_FaMoFaBroDaSoSoDa_FaMoFaBroSoDaSoDa_FaMoFaBroSoSoSoDa_FaMoFaSisDaDaSoDa_FaMoFaSisDaSoSoDa_FaMoFaSisSoDaSoDa_FaMoFaSisSoSoSoDa_FaMoMoBroDaDaSoDa_FaMoMoBroDaSoSoDa_FaMoMoBroSoDaSoDa_FaMoMoBroSoSoSoDa_FaMoMoSisDaDaSoDa_FaMoMoSisDaSoSoDa_FaMoMoSisSoDaSoDa_FaMoMoSisSoSoSoDa_FaMoSisDaSoDa_FaMoSisSoSoDa_FaSisSoDa_MoBroSoDa_MoFaBroDaSoDa_MoFaBroSoSoDa_MoFaFaBroDaDaSoDa_MoFaFaBroDaSoSoDa_MoFaFaBroSoDaSoDa_MoFaFaBroSoSoSoDa_MoFaFaSisDaDaSoDa_MoFaFaSisDaSoSoDa_MoFaFaSisSoDaSoDa_MoFaFaSisSoSoSoDa_MoFaMoBroDaDaSoDa_MoFaMoBroDaSoSoDa_MoFaMoBroSoDaSoDa_MoFaMoBroSoSoSoDa_MoFaMoSisDaDaSoDa_MoFaMoSisDaSoSoDa_MoFaMoSisSoDaSoDa_MoFaMoSisSoSoSoDa_MoFaSisDaSoDa_MoFaSisSoSoDa_MoMoBroDaSoDa_MoMoBroSoSoDa_MoMoFaBroDaDaSoDa_MoMoFaBroDaSoSoDa_MoMoFaBroSoDaSoDa_MoMoFaBroSoSoSoDa_MoMoFaSisDaDaSoDa_MoMoFaSisDaSoSoDa_MoMoFaSisSoDaSoDa_MoMoFaSisSoSoSoDa_MoMoMoBroDaDaSoDa_MoMoMoBroDaSoSoDa_MoMoMoBroSoDaSoDa_MoMoMoBroSoSoSoDa_MoMoMoSisDaDaSoDa_MoMoMoSisDaSoSoDa_MoMoMoSisSoDaSoDa_MoMoMoSisSoSoSoDa_MoMoSisDaSoDa_MoMoSisSoSoDa_MoSisSoDa"}
;; 0
%ra_yit:0%
 Lvl=-1,  PC=1, S=0, Star=0,  {Da}  
 male(Ego), daughter(Alter, Ego).
;; 1
%ra_yit:1, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {BroDa}  
[ext],  male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), daughter(Alter, C).
;; 2
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroSoDa}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 3
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisSoDa}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 4
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 5
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 6
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 7
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 8
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 9
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 10
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 11
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 12
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 13
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 14
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 15
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoMoSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 16
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 17
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 18
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 19
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 20
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 21
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 22
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 23
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoMoFaSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 24
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 25
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 26
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 27
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaSoDa}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 28
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 29
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 30
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 31
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 32
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 33
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 34
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 35
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaMoSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 36
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 37
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 38
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 39
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 40
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 41
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 42
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 43
%ra_yit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {MoFaFaSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 44
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroSoDa}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(E, D), male(E), daughter(Alter, E).
;; 45
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisSoDa}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(E, D), male(E), daughter(Alter, E).
;; 46
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 47
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 48
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 49
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 50
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 51
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 52
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 53
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 54
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 55
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 56
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 57
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoMoSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 58
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 59
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 60
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 61
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 62
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 63
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 64
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 65
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaMoFaSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 66
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 67
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 68
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(G, F), male(G), daughter(Alter, G).
;; 69
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(G, F), male(G), daughter(Alter, G).
;; 70
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 71
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 72
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 73
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 74
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 75
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 76
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 77
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaMoSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 78
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 79
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 80
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 81
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaBroDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 82
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 83
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisSoDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).
;; 84
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaSoSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(I, H), male(I), daughter(Alter, I).
;; 85
%ra_yit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=-1,  PC=11, S=0, Star=0,  {FaFaFaSisDaDaSoDa}  
[ext], [ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(I, H), male(I), daughter(Alter, I).


raira_it(Alter, Ego) :-  husband(Ego, A), brother(Alter, A).
                     |   male(Ego), sister(A, Ego), husband(Alter, A).
                     |  [ext],  husband(Ego, A), even_gen[aux]23(Alter, A), male(Alter).
                     |  [ext],  male(Ego), even_gen[aux]23(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaSisSoDaHu_FaMoBroSoDaHu_FaMoSisSoDaHu_MoFaBroDaDaHu_MoFaSisDaDaHu_MoMoBroDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu_WiBro_WiFaBroSo_WiFaFaBroSoSo_WiFaFaSisSoSo_WiFaMoBroSoSo_WiFaMoSisSoSo_WiMoFaBroDaSo_WiMoFaSisDaSo_WiMoMoBroDaSo_WiMoMoSisDaSo_WiMoSisSo"}
;; 0
%raira_it:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiBro}  
 husband(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%raira_it:1, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), husband(Alter, C).
;; 2
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroSo}  
[ext],  husband(Ego, A), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 3
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisSo}  
[ext],  husband(Ego, A), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), male(Alter).
;; 4
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 5
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 6
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 7
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 8
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 9
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 10
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 11
%raira_it:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaSo}  
[ext], [ext],  husband(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), male(Alter).
;; 12
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), husband(Alter, E).
;; 13
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), husband(Alter, E).
;; 14
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 15
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 16
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 17
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 18
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 19
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 20
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).
;; 21
%raira_it:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), husband(Alter, G).


ramiy(Alter, Ego) :-  parents(A, Ego), father(Alter, A).
                  |   parents(A, Ego), parents(B, A), square[aux]23small(Alter, B), male(Alter).
{"FaFa_FaFaBro_FaFaFa_FaFaFaBro_FaFaFaBroSo_FaFaFaFa_FaFaFaFaBro_FaFaFaFaBroSo_FaFaFaFaFa_FaFaFaFaSisSo_FaFaFaMoBro_FaFaFaMoBroSo_FaFaFaMoFa_FaFaFaMoSisSo_FaFaFaSisSo_FaFaMoBro_FaFaMoBroSo_FaFaMoFa_FaFaMoFaBro_FaFaMoFaBroSo_FaFaMoFaFa_FaFaMoFaSisSo_FaFaMoMoBro_FaFaMoMoBroSo_FaFaMoMoFa_FaFaMoMoSisSo_FaFaMoSisSo_FaMoBro_FaMoFa_FaMoFaBro_FaMoFaBroSo_FaMoFaFa_FaMoFaFaBro_FaMoFaFaBroSo_FaMoFaFaFa_FaMoFaFaSisSo_FaMoFaMoBro_FaMoFaMoBroSo_FaMoFaMoFa_FaMoFaMoSisSo_FaMoFaSisSo_FaMoMoBro_FaMoMoBroSo_FaMoMoFa_FaMoMoFaBro_FaMoMoFaBroSo_FaMoMoFaFa_FaMoMoFaSisSo_FaMoMoMoBro_FaMoMoMoBroSo_FaMoMoMoFa_FaMoMoMoSisSo_FaMoMoSisSo_MoFa_MoFaBro_MoFaFa_MoFaFaBro_MoFaFaBroSo_MoFaFaFa_MoFaFaFaBro_MoFaFaFaBroSo_MoFaFaFaFa_MoFaFaFaSisSo_MoFaFaMoBro_MoFaFaMoBroSo_MoFaFaMoFa_MoFaFaMoSisSo_MoFaFaSisSo_MoFaMoBro_MoFaMoBroSo_MoFaMoFa_MoFaMoFaBro_MoFaMoFaBroSo_MoFaMoFaFa_MoFaMoFaSisSo_MoFaMoMoBro_MoFaMoMoBroSo_MoFaMoMoFa_MoFaMoMoSisSo_MoFaMoSisSo_MoMoBro_MoMoFa_MoMoFaBro_MoMoFaBroSo_MoMoFaFa_MoMoFaFaBro_MoMoFaFaBroSo_MoMoFaFaFa_MoMoFaFaSisSo_MoMoFaMoBro_MoMoFaMoBroSo_MoMoFaMoFa_MoMoFaMoSisSo_MoMoFaSisSo_MoMoMoBro_MoMoMoBroSo_MoMoMoFa_MoMoMoFaBro_MoMoMoFaBroSo_MoMoMoFaFa_MoMoMoFaSisSo_MoMoMoMoBro_MoMoMoMoBroSo_MoMoMoMoFa_MoMoMoMoSisSo_MoMoMoSisSo"}
;; 0
%ramiy:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoFa}  
 mother(A, Ego), father(Alter, A).
;; 1
%ramiy:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaFa}  
 father(A, Ego), father(Alter, A).
;; 2
%ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 3
%ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 4
%ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 5
%ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 6
%ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 7
%ramiy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoFa}  
 mother(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 8
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 9
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 10
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 11
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 12
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 13
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 14
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoBro}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 15
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoFa}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 16
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaBro}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 17
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaFa}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 18
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 19
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 20
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 21
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 22
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisSo}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 23
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 24
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoBro}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 25
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoFa}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 26
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaBro}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 27
%ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaFa}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 28
%ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 29
%ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 30
%ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 31
%ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 32
%ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 33
%ramiy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaFa}  
 mother(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 34
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 35
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 36
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 37
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 38
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisSo}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 39
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 40
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoBro}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 41
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoFa}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 42
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaBro}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 43
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaFa}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 44
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 45
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 46
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 47
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 48
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisSo}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 49
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 50
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoBro}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 51
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoFa}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 52
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaBro}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 53
%ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaFa}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 54
%ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 55
%ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 56
%ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 57
%ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 58
%ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 59
%ramiy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoFa}  
 father(A, Ego), mother(B, A), parent(Alter, B), male(Alter).
;; 60
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 61
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 62
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 63
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 64
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisSo}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 65
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 66
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoBro}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 67
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoFa}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 68
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaBro}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 69
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaFa}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 70
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 71
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 72
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 73
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 74
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisSo}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 75
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaFa}  
 father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 76
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoBro}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 77
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoFa}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 78
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaBro}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 79
%ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaFa}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 80
%ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 81
%ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 82
%ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 83
%ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), male(Alter).
;; 84
%ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), male(Alter).
;; 85
%ramiy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaFa}  
 father(A, Ego), father(B, A), parent(Alter, B), male(Alter).
;; 86
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 87
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 88
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 89
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 90
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisSo}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 91
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoFa}  
 father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), male(Alter).
;; 92
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoBro}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 93
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoFa}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 94
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaBro}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 95
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaFa}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), male(Alter).
;; 96
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), male(Alter).
;; 97
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 98
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 99
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), male(Alter).
;; 100
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisSo}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), male(Alter).
;; 101
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), parent(Alter, C), male(Alter).
;; 102
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoBro}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 103
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoFa}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), male(Alter).
;; 104
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaBro}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), male(Alter).
;; 105
%ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaFa}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), male(Alter).


ratiup(Alter, Ego) :-  wife(A, Ego), father(Alter, A).
                   |  [ext],  wife(A, Ego), father(B, A), brother(Alter, B).
                   |  [ext],  wife(A, Ego), father(B, A), even_gen[aux]23(Alter, B), male(Alter).
                   |  [ext],  wife(A, Ego), father(B, A), sister(C, B), husband(Alter, C).
                   |  [ext],  wife(A, Ego), father(B, A), even_gen[aux]23(C, B), husband(Alter, C).
{"WiFa_WiFaBro_WiFaFaBroDaHu_WiFaFaBroSo_WiFaFaFaBroSoDaHu_WiFaFaFaBroSoSo_WiFaFaFaSisSoDaHu_WiFaFaFaSisSoSo_WiFaFaMoBroSoDaHu_WiFaFaMoBroSoSo_WiFaFaMoSisSoDaHu_WiFaFaMoSisSoSo_WiFaMoFaBroDaDaHu_WiFaMoFaBroDaSo_WiFaMoFaSisDaDaHu_WiFaMoFaSisDaSo_WiFaMoMoBroDaDaHu_WiFaMoMoBroDaSo_WiFaMoMoSisDaDaHu_WiFaMoMoSisDaSo_WiFaMoSisDaHu_WiFaMoSisSo_WiFaSisHu"}
;; 0
%ratiup:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiFa}  
 wife(A, Ego), father(Alter, A).
;; 1
%ratiup:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiFaBro}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), male(Alter).
;; 2
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaFaBroSo}  
[ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(Alter, E), gender(G, C), gender(G, E), male(Alter).
;; 3
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiFaMoSisSo}  
[ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(Alter, E), gender(G, C), gender(G, E), male(Alter).
;; 4
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaSisSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 5
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaSisDaSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 6
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoSisSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 7
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoSisDaSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 8
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaFaBroSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 9
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoFaBroDaSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 10
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaFaMoBroSoSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 11
%ratiup:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiFaMoMoBroDaSo}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), male(Alter).
;; 12
%ratiup:3, sister:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiFaSisHu}  
[ext],  wife(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), husband(Alter, E).
;; 13
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaFaBroDaHu}  
[ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(G, E), gender(H, C), gender(H, E), husband(Alter, G).
;; 14
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiFaMoSisDaHu}  
[ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(G, E), gender(H, C), gender(H, E), husband(Alter, G).
;; 15
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaFaFaSisSoDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 16
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaMoFaSisDaDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 17
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaFaMoSisSoDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 18
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaMoMoSisDaDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 19
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaFaFaBroSoDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 20
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaMoFaBroDaDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 21
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaFaMoBroSoDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).
;; 22
%ratiup:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiFaMoMoBroDaDaHu}  
[ext], [ext],  wife(A, Ego), father(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), husband(Alter, I).


reki_irati(Alter, Ego) :-  male(Ego), brother(A, Ego), elder(A, Ego), wife(Alter, A).
                       |  [ext],  male(Ego), even_gen[aux]23(A, Ego), elder(A, Ego), wife(Alter, A).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_FaFaSisSoSoWi_FaMoBroSoSoWi_FaMoSisSoSoWi_MoFaBroDaSoWi_MoFaSisDaSoWi_MoMoBroDaSoWi_MoMoSisDaSoWi_MoSisSoWi"}
;; 0
%reki_irati:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), elder(C, Ego), wife(Alter, C).
;; 1
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), elder(E, Ego), wife(Alter, E).
;; 2
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), elder(E, Ego), wife(Alter, E).
;; 3
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 4
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 5
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 6
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 7
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 8
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 9
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).
;; 10
%reki_irati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), wife(Alter, G).


reki_it(Alter, Ego) :-  brother(Alter, Ego), male(Ego), elder(Alter, Ego).
                    |  [ext],  even_gen[aux]23(Alter, Ego), male(Ego), male(Alter), elder(Alter, Ego).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaFaBroDaSoSo_FaFaFaBroSoSoSo_FaFaFaSisDaSoSo_FaFaFaSisSoSoSo_FaFaMoBroDaSoSo_FaFaMoBroSoSoSo_FaFaMoSisDaSoSo_FaFaMoSisSoSoSo_FaFaSisSoSo_FaMoBroSoSo_FaMoFaBroDaSoSo_FaMoFaBroSoSoSo_FaMoFaSisDaSoSo_FaMoFaSisSoSoSo_FaMoMoBroDaSoSo_FaMoMoBroSoSoSo_FaMoMoSisDaSoSo_FaMoMoSisSoSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaFaBroDaDaSo_MoFaFaBroSoDaSo_MoFaFaSisDaDaSo_MoFaFaSisSoDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaSo_MoFaMoSisDaDaSo_MoFaMoSisSoDaSo_MoFaSisDaSo_MoMoBroDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaSo_MoMoFaSisDaDaSo_MoMoFaSisSoDaSo_MoMoMoBroDaDaSo_MoMoMoBroSoDaSo_MoMoMoSisDaDaSo_MoMoMoSisSoDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%reki_it:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), male(Alter), male(Ego), elder(Alter, Ego).
;; 1
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(E, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 2
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(E, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 3
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 4
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 5
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 6
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 7
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 8
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 9
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 10
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 11
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 12
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 13
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 14
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 15
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 16
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 17
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 18
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 19
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 20
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 21
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 22
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 23
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 24
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 25
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 26
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 27
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 28
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 29
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 30
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 31
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 32
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 33
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 34
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 35
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 36
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 37
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 38
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 39
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 40
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 41
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).
;; 42
%reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), male(Ego), male(Alter), elder(Alter, Ego).


rekowiat(Alter, Ego) :-  tutit(Ego, Alter).
{"FaBroDaDa_FaBroDaSo_FaFaBroDaDaDa_FaFaBroDaDaSo_FaFaBroSoDaDa_FaFaBroSoDaSo_FaFaSisDaDaDa_FaFaSisDaDaSo_FaFaSisSoDaDa_FaFaSisSoDaSo_FaMoBroDaDaDa_FaMoBroDaDaSo_FaMoBroSoDaDa_FaMoBroSoDaSo_FaMoSisDaDaDa_FaMoSisDaDaSo_FaMoSisSoDaDa_FaMoSisSoDaSo_FaSisDaDa_FaSisDaSo_MoBroDaDa_MoBroDaSo_MoFaBroDaDaDa_MoFaBroDaDaSo_MoFaBroSoDaDa_MoFaBroSoDaSo_MoFaSisDaDaDa_MoFaSisDaDaSo_MoFaSisSoDaDa_MoFaSisSoDaSo_MoMoBroDaDaDa_MoMoBroDaDaSo_MoMoBroSoDaDa_MoMoBroSoDaSo_MoMoSisDaDaDa_MoMoSisDaDaSo_MoMoSisSoDaDa_MoMoSisSoDaSo_MoSisDaDa_MoSisDaSo_SisDa_SisSo"}
;; 0
%rekowiat:0, tutit:0, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
 male(Alter), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego).
;; 1
%rekowiat:0, tutit:1, brother:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
 female(Alter), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego).
;; 2
%rekowiat:0, tutit:2, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisSo}  
[ext],  male(Alter), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego).
;; 3
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaSo}  
[ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego).
;; 4
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaSo}  
[ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego).
;; 5
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 6
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 7
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 8
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 9
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 10
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 11
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 12
%rekowiat:0, tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 13
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaSo}  
[ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego).
;; 14
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaSo}  
[ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego).
;; 15
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 16
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 17
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 18
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 19
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 20
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 21
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 22
%rekowiat:0, tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaSo}  
[ext], [ext], [ext],  male(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 23
%rekowiat:0, tutit:3, generation[aux]23:0, sibling:0%
 Lvl=-1,  PC=5, S=0, Star=0,  {SisDa}  
[ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, A), child(Ego, B), child(Ego, C), not(equal(Ego, A)), male(Ego).
;; 24
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaSisDaDa}  
[ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego).
;; 25
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoSisDaDa}  
[ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego).
;; 26
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 27
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 28
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 29
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 30
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 31
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 32
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 33
%rekowiat:0, tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 34
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {FaBroDaDa}  
[ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Ego, E), male(Ego).
;; 35
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=-1,  PC=7, S=0, Star=0,  {MoBroDaDa}  
[ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Ego, E), male(Ego).
;; 36
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 37
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 38
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 39
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).
;; 40
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaFaBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Ego, G), male(Ego).
;; 41
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoFaBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Ego, G), male(Ego).
;; 42
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=-1,  PC=9, S=0, Star=0,  {FaMoBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Ego, G), male(Ego).
;; 43
%rekowiat:0, tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=-1,  PC=9, S=0, Star=0,  {MoMoBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Ego, G), male(Ego).


remi_uramet(Alter, Ego) :-  odd_gen[aux]23(Alter, Ego), male(Alter).
                        |   odd_gen[aux]23(Alter, Ego), female(Alter).
{"FaFaBroDaDa_FaFaBroDaSo_FaFaFaBroDaDaDa_FaFaFaBroDaDaSo_FaFaFaBroSoDaDa_FaFaFaBroSoDaSo_FaFaFaSisDaDaDa_FaFaFaSisDaDaSo_FaFaFaSisSoDaDa_FaFaFaSisSoDaSo_FaFaMoBroDaDaDa_FaFaMoBroDaDaSo_FaFaMoBroSoDaDa_FaFaMoBroSoDaSo_FaFaMoSisDaDaDa_FaFaMoSisDaDaSo_FaFaMoSisSoDaDa_FaFaMoSisSoDaSo_FaFaSisDaDa_FaFaSisDaSo_FaMoBroDaDa_FaMoBroDaSo_FaMoFaBroDaDaDa_FaMoFaBroDaDaSo_FaMoFaBroSoDaDa_FaMoFaBroSoDaSo_FaMoFaSisDaDaDa_FaMoFaSisDaDaSo_FaMoFaSisSoDaDa_FaMoFaSisSoDaSo_FaMoMoBroDaDaDa_FaMoMoBroDaDaSo_FaMoMoBroSoDaDa_FaMoMoBroSoDaSo_FaMoMoSisDaDaDa_FaMoMoSisDaDaSo_FaMoMoSisSoDaDa_FaMoMoSisSoDaSo_FaMoSisDaDa_FaMoSisDaSo_FaSisDa_FaSisSo_MoBroDa_MoBroSo_MoFaBroSoDa_MoFaBroSoSo_MoFaFaBroDaSoDa_MoFaFaBroDaSoSo_MoFaFaBroSoSoDa_MoFaFaBroSoSoSo_MoFaFaSisDaSoDa_MoFaFaSisDaSoSo_MoFaFaSisSoSoDa_MoFaFaSisSoSoSo_MoFaMoBroDaSoDa_MoFaMoBroDaSoSo_MoFaMoBroSoSoDa_MoFaMoBroSoSoSo_MoFaMoSisDaSoDa_MoFaMoSisDaSoSo_MoFaMoSisSoSoDa_MoFaMoSisSoSoSo_MoFaSisSoDa_MoFaSisSoSo_MoMoBroSoDa_MoMoBroSoSo_MoMoFaBroDaSoDa_MoMoFaBroDaSoSo_MoMoFaBroSoSoDa_MoMoFaBroSoSoSo_MoMoFaSisDaSoDa_MoMoFaSisDaSoSo_MoMoFaSisSoSoDa_MoMoFaSisSoSoSo_MoMoMoBroDaSoDa_MoMoMoBroDaSoSo_MoMoMoBroSoSoDa_MoMoMoBroSoSoSo_MoMoMoSisDaSoDa_MoMoMoSisDaSoSo_MoMoMoSisSoSoDa_MoMoMoSisSoSoSo_MoMoSisSoDa_MoMoSisSoSo"}
;; 0
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisSo}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)), male(Alter).
;; 1
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroSo}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)), male(Alter).
;; 2
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaSo}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 3
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoSo}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 4
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaSo}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 5
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoSo}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 6
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 7
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 8
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 9
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 10
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 11
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 12
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 13
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 14
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 15
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 16
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 17
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 18
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 19
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 20
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 21
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoSo}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 22
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaSo}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 23
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoSo}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 24
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaSo}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 25
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoSo}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), male(Alter).
;; 26
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 27
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 28
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 29
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 30
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 31
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 32
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 33
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 34
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 35
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 36
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 37
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 38
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 39
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 40
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 41
%remi_uramet:0, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoSo}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), male(Alter).
;; 42
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaSisDa}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)), female(Alter).
;; 43
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoBroDa}  
 parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(F, C), not(equal(E, F)), female(Alter).
;; 44
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisDaDa}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 45
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisSoDa}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 46
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisDaDa}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 47
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisSoDa}  
[ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 48
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 49
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 50
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 51
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 52
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 53
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 54
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 55
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 56
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 57
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 58
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 59
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 60
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 61
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 62
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 63
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 64
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroDaDa}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 65
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroSoDa}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 66
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroDaDa}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 67
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroSoDa}  
[ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(H, C), not(equal(G, H)), female(Alter).
;; 68
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 69
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 70
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 71
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 72
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 73
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 74
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 75
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 76
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 77
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 78
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 79
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 80
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 81
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 82
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).
;; 83
%remi_uramet:1, odd_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(J, C), not(equal(I, J)), female(Alter).


remiariru(Alter, Ego) :-  yariy(Ego, Alter), male(Alter).
                      |   yariy(Ego, Alter), female(Alter).
{"BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaDaSo_BroDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSo_BroDaSoDa_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSo_BroDaSoSoDa_BroDaSoSoSo_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSo_BroSoSoDa_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSo_BroSoSoSoDa_BroSoSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaDaDa_DaDaDaDaSo_DaDaDaSo_DaDaDaSoDa_DaDaDaSoSo_DaDaSo_DaDaSoDa_DaDaSoDaDa_DaDaSoDaSo_DaDaSoSo_DaDaSoSoDa_DaDaSoSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaDaDa_DaSoDaDaSo_DaSoDaSo_DaSoDaSoDa_DaSoDaSoSo_DaSoSo_DaSoSoDa_DaSoSoDaDa_DaSoSoDaSo_DaSoSoSo_DaSoSoSoDa_DaSoSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSo_SisDaSoDa_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSo_SisSoSoDa_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSo_SisSoSoSoDa_SisSoSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaDaDa_SoDaDaDaSo_SoDaDaSo_SoDaDaSoDa_SoDaDaSoSo_SoDaSo_SoDaSoDa_SoDaSoDaDa_SoDaSoDaSo_SoDaSoSo_SoDaSoSoDa_SoDaSoSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaDaDa_SoSoDaDaSo_SoSoDaSo_SoSoDaSoDa_SoSoDaSoSo_SoSoSo_SoSoSoDa_SoSoSoDaDa_SoSoSoDaSo_SoSoSoSo_SoSoSoSoDa_SoSoSoSoSo"}
;; 0
%remiariru:0, yariy:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), mother(Ego, A), male(Alter).
;; 1
%remiariru:0, yariy:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), mother(Ego, A), male(Alter).
;; 2
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 3
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 4
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 5
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 6
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 7
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 mother(A, Alter), mother(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 8
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 9
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 10
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 11
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 12
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 13
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 14
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 15
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 16
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 17
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 18
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 19
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 20
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 21
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 22
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 23
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 24
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 25
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 26
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 27
%remiariru:0, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 28
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 29
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 30
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 31
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 32
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 33
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 mother(A, Alter), father(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 34
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 35
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 36
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 37
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 38
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 39
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 40
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 41
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 42
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 43
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 44
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 45
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 46
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 47
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 48
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 49
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 50
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 51
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 52
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 53
%remiariru:0, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 54
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 55
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 56
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 57
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 58
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 59
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 father(A, Alter), mother(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 60
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 61
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 62
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 63
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 64
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 65
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 66
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 67
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 68
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 69
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 70
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 71
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 72
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 73
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 74
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 75
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 76
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 77
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 78
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 79
%remiariru:0, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 80
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), male(Alter).
;; 81
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 82
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 83
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), male(Alter).
;; 84
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), male(Alter).
;; 85
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 father(A, Alter), father(B, A), parent(Ego, B), female(Ego), male(Alter).
;; 86
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 87
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 88
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 89
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 90
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 91
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 92
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 93
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 94
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 95
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 96
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), male(Alter).
;; 97
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 98
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 99
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), male(Alter).
;; 100
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), male(Alter).
;; 101
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Ego), male(Alter).
;; 102
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 103
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 104
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), male(Alter).
;; 105
%remiariru:0, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), male(Alter).
;; 106
%remiariru:1, yariy:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), mother(Ego, A), female(Alter).
;; 107
%remiariru:1, yariy:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), mother(Ego, A), female(Alter).
;; 108
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 109
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 110
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 111
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 112
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 113
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 mother(A, Alter), mother(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 114
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 115
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 116
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 117
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 118
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 119
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 120
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 121
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 122
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 123
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 124
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 125
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 126
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 127
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 128
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 129
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 130
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 131
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 132
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 133
%remiariru:1, yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 134
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 135
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 136
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 137
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 138
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 139
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 mother(A, Alter), father(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 140
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 141
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 142
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 143
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 144
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 145
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 146
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 147
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 148
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 149
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 150
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 151
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 152
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 153
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 154
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 155
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 156
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 157
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 158
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 159
%remiariru:1, yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 160
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 161
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 162
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 163
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 164
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 165
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 father(A, Alter), mother(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 166
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 167
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 168
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 169
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 170
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 171
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 172
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 173
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 174
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 175
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 176
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 177
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 178
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 179
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 180
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 181
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 182
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 183
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 184
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 185
%remiariru:1, yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 186
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), female(Ego), female(Alter).
;; 187
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 188
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 189
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), female(Ego), female(Alter).
;; 190
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), female(Ego), female(Alter).
;; 191
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 father(A, Alter), father(B, A), parent(Ego, B), female(Ego), female(Alter).
;; 192
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 193
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 194
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 195
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 196
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 197
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 198
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 199
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 200
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 201
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 202
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), female(Ego), female(Alter).
;; 203
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 204
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 205
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), female(Ego), female(Alter).
;; 206
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), female(Ego), female(Alter).
;; 207
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), parent(Ego, C), female(Ego), female(Alter).
;; 208
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 209
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), female(Ego), female(Alter).
;; 210
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), female(Ego), female(Alter).
;; 211
%remiariru:1, yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), female(Ego), female(Alter).


remiminu(Alter, Ego) :-  ramiy(Ego, Alter), male(Alter).
                     |   ramiy(Ego, Alter), female(Alter).
{"BroDaDa_BroDaDaDa_BroDaDaDaDa_BroDaDaDaSo_BroDaDaSo_BroDaDaSoDa_BroDaDaSoSo_BroDaSo_BroDaSoDa_BroDaSoDaDa_BroDaSoDaSo_BroDaSoSo_BroDaSoSoDa_BroDaSoSoSo_BroSoDa_BroSoDaDa_BroSoDaDaDa_BroSoDaDaSo_BroSoDaSo_BroSoDaSoDa_BroSoDaSoSo_BroSoSo_BroSoSoDa_BroSoSoDaDa_BroSoSoDaSo_BroSoSoSo_BroSoSoSoDa_BroSoSoSoSo_DaDa_DaDaDa_DaDaDaDa_DaDaDaDaDa_DaDaDaDaSo_DaDaDaSo_DaDaDaSoDa_DaDaDaSoSo_DaDaSo_DaDaSoDa_DaDaSoDaDa_DaDaSoDaSo_DaDaSoSo_DaDaSoSoDa_DaDaSoSoSo_DaSo_DaSoDa_DaSoDaDa_DaSoDaDaDa_DaSoDaDaSo_DaSoDaSo_DaSoDaSoDa_DaSoDaSoSo_DaSoSo_DaSoSoDa_DaSoSoDaDa_DaSoSoDaSo_DaSoSoSo_DaSoSoSoDa_DaSoSoSoSo_FaBroDaDaDa_FaBroDaDaDaDa_FaBroDaDaDaSo_FaBroDaDaSo_FaBroDaDaSoDa_FaBroDaDaSoSo_FaBroDaSoDa_FaBroDaSoDaDa_FaBroDaSoDaSo_FaBroDaSoSo_FaBroDaSoSoDa_FaBroDaSoSoSo_FaBroSoDaDa_FaBroSoDaDaDa_FaBroSoDaDaSo_FaBroSoDaSo_FaBroSoDaSoDa_FaBroSoDaSoSo_FaBroSoSoDa_FaBroSoSoDaDa_FaBroSoSoDaSo_FaBroSoSoSo_FaBroSoSoSoDa_FaBroSoSoSoSo_FaSisDaDaDa_FaSisDaDaDaDa_FaSisDaDaDaSo_FaSisDaDaSo_FaSisDaDaSoDa_FaSisDaDaSoSo_FaSisDaSoDa_FaSisDaSoDaDa_FaSisDaSoDaSo_FaSisDaSoSo_FaSisDaSoSoDa_FaSisDaSoSoSo_FaSisSoDaDa_FaSisSoDaDaDa_FaSisSoDaDaSo_FaSisSoDaSo_FaSisSoDaSoDa_FaSisSoDaSoSo_FaSisSoSoDa_FaSisSoSoDaDa_FaSisSoSoDaSo_FaSisSoSoSo_FaSisSoSoSoDa_FaSisSoSoSoSo_MoBroDaDaDa_MoBroDaDaDaDa_MoBroDaDaDaSo_MoBroDaDaSo_MoBroDaDaSoDa_MoBroDaDaSoSo_MoBroDaSoDa_MoBroDaSoDaDa_MoBroDaSoDaSo_MoBroDaSoSo_MoBroDaSoSoDa_MoBroDaSoSoSo_MoBroSoDaDa_MoBroSoDaDaDa_MoBroSoDaDaSo_MoBroSoDaSo_MoBroSoDaSoDa_MoBroSoDaSoSo_MoBroSoSoDa_MoBroSoSoDaDa_MoBroSoSoDaSo_MoBroSoSoSo_MoBroSoSoSoDa_MoBroSoSoSoSo_MoSisDaDaDa_MoSisDaDaDaDa_MoSisDaDaDaSo_MoSisDaDaSo_MoSisDaDaSoDa_MoSisDaDaSoSo_MoSisDaSoDa_MoSisDaSoDaDa_MoSisDaSoDaSo_MoSisDaSoSo_MoSisDaSoSoDa_MoSisDaSoSoSo_MoSisSoDaDa_MoSisSoDaDaDa_MoSisSoDaDaSo_MoSisSoDaSo_MoSisSoDaSoDa_MoSisSoDaSoSo_MoSisSoSoDa_MoSisSoSoDaDa_MoSisSoSoDaSo_MoSisSoSoSo_MoSisSoSoSoDa_MoSisSoSoSoSo_SisDaDa_SisDaDaDa_SisDaDaDaDa_SisDaDaDaSo_SisDaDaSo_SisDaDaSoDa_SisDaDaSoSo_SisDaSo_SisDaSoDa_SisDaSoDaDa_SisDaSoDaSo_SisDaSoSo_SisDaSoSoDa_SisDaSoSoSo_SisSoDa_SisSoDaDa_SisSoDaDaDa_SisSoDaDaSo_SisSoDaSo_SisSoDaSoDa_SisSoDaSoSo_SisSoSo_SisSoSoDa_SisSoSoDaDa_SisSoSoDaSo_SisSoSoSo_SisSoSoSoDa_SisSoSoSoSo_SoDa_SoDaDa_SoDaDaDa_SoDaDaDaDa_SoDaDaDaSo_SoDaDaSo_SoDaDaSoDa_SoDaDaSoSo_SoDaSo_SoDaSoDa_SoDaSoDaDa_SoDaSoDaSo_SoDaSoSo_SoDaSoSoDa_SoDaSoSoSo_SoSo_SoSoDa_SoSoDaDa_SoSoDaDaDa_SoSoDaDaSo_SoSoDaSo_SoSoDaSoDa_SoSoDaSoSo_SoSoSo_SoSoSoDa_SoSoSoDaDa_SoSoSoDaSo_SoSoSoSo_SoSoSoSoDa_SoSoSoSoSo"}
;; 0
%remiminu:0, ramiy:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaSo}  
 mother(A, Alter), father(Ego, A), male(Alter).
;; 1
%remiminu:0, ramiy:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoSo}  
 father(A, Alter), father(Ego, A), male(Alter).
;; 2
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 3
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 4
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 5
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 6
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 7
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaSo}  
 mother(A, Alter), mother(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 8
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 9
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 10
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 11
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 12
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 13
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 14
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 15
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 16
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 17
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaSo}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 18
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 19
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 20
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 21
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 22
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaSo}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 23
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 24
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 25
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 26
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 27
%remiminu:0, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaSo}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 28
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 29
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 30
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 31
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 32
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 33
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaSo}  
 mother(A, Alter), father(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 34
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 35
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 36
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 37
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 38
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaSo}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 39
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 40
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 41
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 42
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 43
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaSo}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 44
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 45
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 46
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 47
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 48
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaSo}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 49
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 50
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 51
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 52
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 53
%remiminu:0, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaSo}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 54
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 55
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 56
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 57
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 58
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 59
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoSo}  
 father(A, Alter), mother(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 60
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 61
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 62
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 63
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 64
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoSo}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 65
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 66
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 67
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 68
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 69
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoSo}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 70
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 71
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 72
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 73
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 74
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoSo}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 75
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 76
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 77
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 78
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 79
%remiminu:0, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoSo}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 80
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), male(Alter).
;; 81
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 82
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 83
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), male(Alter).
;; 84
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), male(Alter).
;; 85
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoSo}  
 father(A, Alter), father(B, A), parent(Ego, B), male(Ego), male(Alter).
;; 86
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 87
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 88
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 89
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 90
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoSo}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 91
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 92
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 93
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 94
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 95
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoSo}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 96
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), male(Alter).
;; 97
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 98
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 99
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), male(Alter).
;; 100
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoSo}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), male(Alter).
;; 101
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Ego), male(Alter).
;; 102
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 103
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 104
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), male(Alter).
;; 105
%remiminu:0, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoSo}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), male(Alter).
;; 106
%remiminu:1, ramiy:0, parents:0%
 Lvl=-2,  PC=2, S=0, Star=0,  {DaDa}  
 mother(A, Alter), father(Ego, A), female(Alter).
;; 107
%remiminu:1, ramiy:0, parents:1%
 Lvl=-2,  PC=2, S=0, Star=0,  {SoDa}  
 father(A, Alter), father(Ego, A), female(Alter).
;; 108
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 109
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 110
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 111
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 112
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 113
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaDaDa}  
 mother(A, Alter), mother(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 114
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 115
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 116
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 117
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 118
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 119
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 120
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 121
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 122
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 123
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaDaDa}  
 mother(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 124
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 125
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 126
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 127
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 128
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaDaDa}  
[ext],  mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 129
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 130
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 131
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 132
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 133
%remiminu:1, ramiy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaDaDa}  
 mother(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 134
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 135
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 136
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 137
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 138
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 139
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoDaDa}  
 mother(A, Alter), father(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 140
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 141
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 142
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 143
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 144
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoDaDa}  
[ext],  mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 145
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 146
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 147
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 148
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 149
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoDaDa}  
 mother(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 150
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 151
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 152
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 153
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 154
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoDaDa}  
[ext],  mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 155
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 156
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 157
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 158
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 159
%remiminu:1, ramiy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoDaDa}  
 mother(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 160
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {SisSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 161
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 162
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 163
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 164
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 165
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {DaSoDa}  
 father(A, Alter), mother(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 166
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 167
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 168
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 169
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 170
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaDaSoDa}  
[ext],  father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 171
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 172
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 173
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 174
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 175
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaDaSoDa}  
 father(A, Alter), mother(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 176
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 177
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 178
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 179
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 180
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoDaSoDa}  
[ext],  father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 181
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 182
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 183
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 184
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 185
%remiminu:1, ramiy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoDaSoDa}  
 father(A, Alter), mother(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 186
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-2,  PC=6, S=0, Star=0,  {BroSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, B), child(Ego, C), child(Ego, D), not(equal(Ego, B)), male(Ego), female(Alter).
;; 187
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 188
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoSisSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 189
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {FaBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Ego, F), male(Ego), female(Alter).
;; 190
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-2,  PC=8, S=0, Star=0,  {MoBroSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Ego, F), male(Ego), female(Alter).
;; 191
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=-3,  PC=3, S=0, Star=0,  {SoSoDa}  
 father(A, Alter), father(B, A), parent(Ego, B), male(Ego), female(Alter).
;; 192
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {SisSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 193
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 194
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 195
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 196
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroDaSoSoDa}  
[ext],  father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 197
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {DaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 198
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 199
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 200
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 201
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoDaSoSoDa}  
 father(A, Alter), father(B, A), mother(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 202
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-3,  PC=7, S=0, Star=0,  {BroSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), father(E, C), child(Ego, D), child(Ego, E), not(equal(Ego, C)), male(Ego), female(Alter).
;; 203
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 204
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoSisSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 205
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {FaBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Ego, G), male(Ego), female(Alter).
;; 206
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=-3,  PC=9, S=0, Star=0,  {MoBroSoSoSoDa}  
[ext],  father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Ego, G), male(Ego), female(Alter).
;; 207
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-4,  PC=4, S=0, Star=0,  {SoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), parent(Ego, C), male(Ego), female(Alter).
;; 208
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {SisSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 209
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {DaSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), mother(D, C), parent(Ego, D), male(Ego), female(Alter).
;; 210
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=-4,  PC=8, S=0, Star=0,  {BroSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Ego, E), child(Ego, F), not(equal(Ego, D)), male(Ego), female(Alter).
;; 211
%remiminu:1, ramiy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=-5,  PC=5, S=0, Star=0,  {SoSoSoSoDa}  
 father(A, Alter), father(B, A), father(C, B), father(D, C), parent(Ego, D), male(Ego), female(Alter).


remireko(Alter, Ego) :-  wife(Alter, Ego).
{"Wi"}
;; 0
%remireko:0%
 Lvl=0,  PC=0, S=1, Star=0,  {Wi}  
 wife(Alter, Ego).


remirekoikiet(Alter, Ego) :-  wife(A, Ego), sister(Alter, A), elder(Alter, A).
                          |  [ext],  wife(A, Ego), even_gen[aux]23(Alter, A), female(Alter), elder(Alter, A).
{"WiFaBroDa_WiFaFaBroSoDa_WiFaFaSisSoDa_WiFaMoBroSoDa_WiFaMoSisSoDa_WiMoFaBroDaDa_WiMoFaSisDaDa_WiMoMoBroDaDa_WiMoMoSisDaDa_WiMoSisDa_WiSis"}
;; 0
%remirekoikiet:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), elder(Alter, A).
;; 1
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter), elder(Alter, A).
;; 2
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter), elder(Alter, A).
;; 3
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 4
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 5
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 6
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 7
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 8
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 9
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).
;; 10
%remirekoikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), elder(Alter, A).


remirekokipi_it(Alter, Ego) :-  wife(A, Ego), sister(Alter, A), younger(Alter, A).
                            |  [ext],  wife(A, Ego), even_gen[aux]23(Alter, A), female(Alter), younger(Alter, A).
{"WiFaBroDa_WiFaFaBroSoDa_WiFaFaSisSoDa_WiFaMoBroSoDa_WiFaMoSisSoDa_WiMoFaBroDaDa_WiMoFaSisDaDa_WiMoMoBroDaDa_WiMoMoSisDaDa_WiMoSisDa_WiSis"}
;; 0
%remirekokipi_it:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {WiSis}  
 wife(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter), younger(Alter, A).
;; 1
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiFaBroDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter), younger(Alter, A).
;; 2
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {WiMoSisDa}  
[ext],  wife(A, Ego), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter), younger(Alter, A).
;; 3
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaSisSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 4
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaSisDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 5
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoSisSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 6
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoSisDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 7
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaFaBroSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 8
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoFaBroDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 9
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {WiFaMoBroSoDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).
;; 10
%remirekokipi_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {WiMoMoBroDaDa}  
[ext], [ext],  wife(A, Ego), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter), younger(Alter, A).


renit(Alter, Ego) :-  kiwit(Ego, Alter).
{"FaBroDa_FaFaBroSoDa_FaFaFaBroDaSoDa_FaFaFaBroSoSoDa_FaFaFaSisDaSoDa_FaFaFaSisSoSoDa_FaFaMoBroDaSoDa_FaFaMoBroSoSoDa_FaFaMoSisDaSoDa_FaFaMoSisSoSoDa_FaFaSisSoDa_FaMoBroSoDa_FaMoFaBroDaSoDa_FaMoFaBroSoSoDa_FaMoFaSisDaSoDa_FaMoFaSisSoSoDa_FaMoMoBroDaSoDa_FaMoMoBroSoSoDa_FaMoMoSisDaSoDa_FaMoMoSisSoSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroSoDaDa_MoFaFaSisDaDaDa_MoFaFaSisSoDaDa_MoFaMoBroDaDaDa_MoFaMoBroSoDaDa_MoFaMoSisDaDaDa_MoFaMoSisSoDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoFaBroDaDaDa_MoMoFaBroSoDaDa_MoMoFaSisDaDaDa_MoMoFaSisSoDaDa_MoMoMoBroDaDaDa_MoMoMoBroSoDaDa_MoMoMoSisDaDaDa_MoMoMoSisSoDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%renit:0, kiwit:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 female(Alter), mother(A, Alter), father(B, Alter), child(Ego, A), child(Ego, B), not(equal(Ego, Alter)), male(Ego).
;; 1
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Ego, C), gender(E, A), gender(E, C), male(Ego).
;; 2
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Ego, C), gender(E, A), gender(E, C), male(Ego).
;; 3
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 4
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 5
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 6
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 7
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 8
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 9
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 10
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 11
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 12
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 13
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 14
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 15
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 16
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 17
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 18
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 19
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 20
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 21
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 22
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 23
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 24
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 25
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 26
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Ego).
;; 27
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 28
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 29
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 30
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 31
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 32
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 33
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 34
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 35
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 36
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 37
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 38
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 39
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 40
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 41
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).
;; 42
%renit:0, kiwit:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext], [ext], [ext],  female(Alter), parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Ego).


rewirerati(Alter, Ego) :-  male(Ego), brother(A, Ego), younger(A, Ego), wife(Alter, A).
                       |  [ext],  male(Ego), even_gen[aux]23(A, Ego), younger(A, Ego), wife(Alter, A).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_FaFaSisSoSoWi_FaMoBroSoSoWi_FaMoSisSoSoWi_MoFaBroDaSoWi_MoFaSisDaSoWi_MoMoBroDaSoWi_MoMoSisDaSoWi_MoSisSoWi"}
;; 0
%rewirerati:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 male(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), younger(C, Ego), wife(Alter, C).
;; 1
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), younger(E, Ego), wife(Alter, E).
;; 2
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  male(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), younger(E, Ego), wife(Alter, E).
;; 3
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 4
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 5
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 6
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 7
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 8
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 9
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).
;; 10
%rewirerati:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext], [ext],  male(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), younger(G, Ego), wife(Alter, G).


rewiret(Alter, Ego) :-  reki_it(Ego, Alter).
{"Bro_FaBroSo_FaFaBroSoSo_FaFaFaBroDaSoSo_FaFaFaBroSoSoSo_FaFaFaSisDaSoSo_FaFaFaSisSoSoSo_FaFaMoBroDaSoSo_FaFaMoBroSoSoSo_FaFaMoSisDaSoSo_FaFaMoSisSoSoSo_FaFaSisSoSo_FaMoBroSoSo_FaMoFaBroDaSoSo_FaMoFaBroSoSoSo_FaMoFaSisDaSoSo_FaMoFaSisSoSoSo_FaMoMoBroDaSoSo_FaMoMoBroSoSoSo_FaMoMoSisDaSoSo_FaMoMoSisSoSoSo_FaMoSisSoSo_MoFaBroDaSo_MoFaFaBroDaDaSo_MoFaFaBroSoDaSo_MoFaFaSisDaDaSo_MoFaFaSisSoDaSo_MoFaMoBroDaDaSo_MoFaMoBroSoDaSo_MoFaMoSisDaDaSo_MoFaMoSisSoDaSo_MoFaSisDaSo_MoMoBroDaSo_MoMoFaBroDaDaSo_MoMoFaBroSoDaSo_MoMoFaSisDaDaSo_MoMoFaSisSoDaSo_MoMoMoBroDaDaSo_MoMoMoBroSoDaSo_MoMoMoSisDaDaSo_MoMoMoSisSoDaSo_MoMoSisDaSo_MoSisSo"}
;; 0
%rewiret:0, reki_it:0, brother:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Bro}  
 mother(A, Alter), father(B, Alter), child(Ego, A), child(Ego, B), not(equal(Ego, Alter)), male(Ego), male(Alter), elder(Ego, Alter).
;; 1
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroSo}  
[ext],  parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Ego, C), gender(E, A), gender(E, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 2
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisSo}  
[ext],  parent(A, Alter), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Ego, C), gender(E, A), gender(E, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 3
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoSo}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 4
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaSo}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 5
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoSo}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 6
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaSo}  
[ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 7
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 8
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 9
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 10
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 11
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 12
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 13
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 14
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 15
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 16
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 17
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 18
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 19
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 20
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 21
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 22
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 23
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoSo}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 24
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaSo}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 25
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoSo}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 26
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaSo}  
[ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Ego, C), gender(G, A), gender(G, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 27
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 28
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 29
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 30
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 31
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 32
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 33
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 34
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 35
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 36
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 37
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 38
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 39
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 40
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 41
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).
;; 42
%rewiret:0, reki_it:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaSo}  
[ext], [ext], [ext],  parent(A, Alter), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Ego, C), gender(I, A), gender(I, C), male(Alter), male(Ego), elder(Ego, Alter).


rikiet(Alter, Ego) :-  sister(Alter, Ego), female(Ego), elder(Alter, Ego).
                   |  [ext],  even_gen[aux]23(Alter, Ego), female(Ego), female(Alter), elder(Alter, Ego).
{"FaBroDa_FaFaBroSoDa_FaFaFaBroDaSoDa_FaFaFaBroSoSoDa_FaFaFaSisDaSoDa_FaFaFaSisSoSoDa_FaFaMoBroDaSoDa_FaFaMoBroSoSoDa_FaFaMoSisDaSoDa_FaFaMoSisSoSoDa_FaFaSisSoDa_FaMoBroSoDa_FaMoFaBroDaSoDa_FaMoFaBroSoSoDa_FaMoFaSisDaSoDa_FaMoFaSisSoSoDa_FaMoMoBroDaSoDa_FaMoMoBroSoSoDa_FaMoMoSisDaSoDa_FaMoMoSisSoSoDa_FaMoSisSoDa_MoFaBroDaDa_MoFaFaBroDaDaDa_MoFaFaBroSoDaDa_MoFaFaSisDaDaDa_MoFaFaSisSoDaDa_MoFaMoBroDaDaDa_MoFaMoBroSoDaDa_MoFaMoSisDaDaDa_MoFaMoSisSoDaDa_MoFaSisDaDa_MoMoBroDaDa_MoMoFaBroDaDaDa_MoMoFaBroSoDaDa_MoMoFaSisDaDaDa_MoMoFaSisSoDaDa_MoMoMoBroDaDaDa_MoMoMoBroSoDaDa_MoMoMoSisDaDaDa_MoMoMoSisSoDaDa_MoMoSisDaDa_MoSisDa_Sis"}
;; 0
%rikiet:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=0, Star=0,  {Sis}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)), female(Alter), female(Ego), elder(Alter, Ego).
;; 1
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {FaBroDa}  
[ext],  parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(Alter, C), gender(E, A), gender(E, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 2
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=0, Star=0,  {MoSisDa}  
[ext],  parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(Alter, C), gender(E, A), gender(E, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 3
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaSisSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 4
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaSisDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 5
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoSisSoDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 6
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoSisDaDa}  
[ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 7
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 8
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 9
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 10
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 11
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 12
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 13
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 14
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 15
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 16
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 17
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 18
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 19
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 20
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 21
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroDaSoDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 22
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroDaDaDa}  
[ext], [ext], [ext],  parent(A, Ego), mother(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 23
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaFaBroSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 24
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoFaBroDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 25
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=0, Star=0,  {FaMoBroSoDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 26
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=0, Star=0,  {MoMoBroDaDa}  
[ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(Alter, C), gender(G, A), gender(G, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 27
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 28
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 29
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 30
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 31
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 32
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 33
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoSisSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 34
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoSisSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), mother(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 35
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaFaBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 36
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaFaBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 37
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoFaBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 38
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoFaBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 39
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaFaMoBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 40
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoFaMoBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 41
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=10, S=0, Star=0,  {FaMoMoBroSoSoDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), son(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).
;; 42
%rikiet:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=10, S=0, Star=0,  {MoMoMoBroSoDaDa}  
[ext], [ext], [ext],  parent(A, Ego), father(B, C), father(D, B), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), daughter(A, H), child(Alter, C), gender(I, A), gender(I, C), female(Ego), female(Alter), elder(Alter, Ego).


rikiewen(Alter, Ego) :-  female(Ego), sister(A, Ego), elder(A, Ego), husband(Alter, A).
                     |  [ext],  female(Ego), even_gen[aux]23(A, Ego), elder(A, Ego), husband(Alter, A).
{"FaBroDaHu_FaFaBroSoDaHu_FaFaSisSoDaHu_FaMoBroSoDaHu_FaMoSisSoDaHu_MoFaBroDaDaHu_MoFaSisDaDaHu_MoMoBroDaDaHu_MoMoSisDaDaHu_MoSisDaHu_SisHu"}
;; 0
%rikiewen:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {SisHu}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), female(C), elder(C, Ego), husband(Alter, C).
;; 1
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroDaHu}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), elder(E, Ego), husband(Alter, E).
;; 2
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisDaHu}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), elder(E, Ego), husband(Alter, E).
;; 3
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 4
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 5
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 6
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 7
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 8
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 9
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).
;; 10
%rikiewen:1, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaDaHu}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), elder(G, Ego), husband(Alter, G).


royo(Alter, Ego) :-  wife(A, Ego), mother(Alter, A).
                 |  [ext],  wife(A, Ego), mother(B, A), sister(Alter, B).
                 |  [ext],  wife(A, Ego), mother(B, A), even_gen[aux]23(Alter, B), female(Alter).
                 |  [ext],  wife(A, Ego), mother(B, A), brother(C, B), wife(Alter, C).
                 |  [ext],  wife(A, Ego), mother(B, A), even_gen[aux]23(C, B), wife(Alter, C).
{"WiMo_WiMoBroWi_WiMoFaBroDa_WiMoFaBroSoWi_WiMoFaFaBroSoDa_WiMoFaFaBroSoSoWi_WiMoFaFaSisSoDa_WiMoFaFaSisSoSoWi_WiMoFaMoBroSoDa_WiMoFaMoBroSoSoWi_WiMoFaMoSisSoDa_WiMoFaMoSisSoSoWi_WiMoMoFaBroDaDa_WiMoMoFaBroDaSoWi_WiMoMoFaSisDaDa_WiMoMoFaSisDaSoWi_WiMoMoMoBroDaDa_WiMoMoMoBroDaSoWi_WiMoMoMoSisDaDa_WiMoMoMoSisDaSoWi_WiMoMoSisDa_WiMoMoSisSoWi_WiMoSis"}
;; 0
%royo:0%
 Lvl=1,  PC=1, S=1, Star=0,  {WiMo}  
 wife(A, Ego), mother(Alter, A).
;; 1
%royo:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=1, Star=0,  {WiMoSis}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 2
%royo:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoFaBroDa}  
[ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(Alter, E), gender(G, C), gender(G, E), female(Alter).
;; 3
%royo:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=1, Star=0,  {WiMoMoSisDa}  
[ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(Alter, E), gender(G, C), gender(G, E), female(Alter).
;; 4
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaSisSoDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 5
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaSisDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 6
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoSisSoDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 7
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoSisDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 8
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaFaBroSoDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 9
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoFaBroDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 10
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoFaMoBroSoDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 11
%royo:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=1, Star=0,  {WiMoMoMoBroDaDa}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(Alter, E), gender(I, C), gender(I, E), female(Alter).
;; 12
%royo:3, brother:0, sibling:0%
 Lvl=1,  PC=5, S=2, Star=0,  {WiMoBroWi}  
[ext],  wife(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), wife(Alter, E).
;; 13
%royo:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoFaBroSoWi}  
[ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), male(C), child(G, E), gender(H, C), gender(H, E), wife(Alter, G).
;; 14
%royo:4, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=2, Star=0,  {WiMoMoSisSoWi}  
[ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), father(F, E), child(C, D), child(C, F), not(equal(C, E)), female(C), child(G, E), gender(H, C), gender(H, E), wife(Alter, G).
;; 15
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoFaFaSisSoSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 16
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoMoFaSisDaSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 17
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoFaMoSisSoSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 18
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoMoMoSisDaSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), mother(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 19
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoFaFaBroSoSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 20
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoMoFaBroDaSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), male(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 21
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoFaMoBroSoSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), son(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).
;; 22
%royo:4, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=2, Star=0,  {WiMoMoMoBroDaSoWi}  
[ext], [ext],  wife(A, Ego), mother(B, A), parent(C, B), father(D, E), mother(F, D), father(G, D), child(H, F), child(H, G), not(equal(H, D)), female(H), daughter(C, H), child(I, E), gender(J, C), gender(J, E), wife(Alter, I).


ru_wit(Alter, Ego) :-  father(A, Ego), brother(Alter, A).
                   |  [ext],  father(A, Ego), generation[aux]23(Alter, A), male(Alter).
{"FaBro_FaFaBroSo_FaFaFaBroDaSo_FaFaFaBroSoSo_FaFaFaSisDaSo_FaFaFaSisSoSo_FaFaMoBroDaSo_FaFaMoBroSoSo_FaFaMoSisDaSo_FaFaMoSisSoSo_FaFaSisSo_FaMoBroSo_FaMoFaBroDaSo_FaMoFaBroSoSo_FaMoFaSisDaSo_FaMoFaSisSoSo_FaMoMoBroDaSo_FaMoMoBroSoSo_FaMoMoSisDaSo_FaMoMoSisSoSo_FaMoSisSo"}
;; 0
%ru_wit:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%ru_wit:1, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaBro}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 3
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisSo}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 4
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 5
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 6
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 7
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 8
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 9
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 10
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 11
%ru_wit:1, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaSo}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 12
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 13
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisSo}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 14
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 15
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 16
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 17
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 18
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 19
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 20
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 21
%ru_wit:1, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaSo}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


rup(Alter, Ego) :-  father(Alter, Ego).
{"Fa"}
;; 0
%rup:0%
 Lvl=1,  PC=1, S=0, Star=0,  {Fa}  
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


square[aux]23(Alter, Ego) :-  generation[aux]23(Alter, Ego).
                          |   parent(Alter, Ego).
                          |   parents(A, Ego), square[aux]23(Alter, A).
;; 0
%square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 4
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 5
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 6
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 7
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 8
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 9
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 10
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 11
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 12
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 13
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 14
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 15
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 16
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 17
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 18
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 19
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 20
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 21
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 22
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 23
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 24
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 25
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 26
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 27
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 28
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 29
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 30
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 31
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 32
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 33
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 34
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 35
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 36
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 37
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 38
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 39
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 40
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 41
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 42
%square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 43
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 44
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 45
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 46
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 47
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 48
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 49
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 50
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 51
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 52
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 53
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 54
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 55
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 56
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 57
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 58
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 59
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 60
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 61
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 62
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 63
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 64
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 65
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), son(F, E), child(Alter, F).
;; 66
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), daughter(F, E), child(Alter, F).
;; 67
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), son(F, E), child(Alter, F).
;; 68
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), daughter(F, E), child(Alter, F).
;; 69
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 70
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 71
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 72
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 73
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 74
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 75
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 76
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 77
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), son(H, G), child(Alter, H).
;; 78
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), daughter(H, G), child(Alter, H).
;; 79
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), son(H, G), child(Alter, H).
;; 80
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 81
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), son(H, G), child(Alter, H).
;; 82
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), daughter(H, G), child(Alter, H).
;; 83
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), son(H, G), child(Alter, H).
;; 84
%square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), daughter(H, G), child(Alter, H).
;; 85
%square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 86
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 87
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 88
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 89
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 90
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 91
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 92
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 93
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 94
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 95
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 96
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 97
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 98
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 99
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 100
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 101
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 102
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 103
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 104
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 105
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 106
%square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 107
%square[aux]23:2, parents:0, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 108
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 109
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 110
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 111
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 112
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 113
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 114
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 115
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 116
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 117
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 118
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 119
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 120
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 121
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 122
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 123
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 124
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 125
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 126
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 127
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 128
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 129
%square[aux]23:2, parents:0, square[aux]23:2, parents:0, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 130
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 131
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 132
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 133
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 134
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 135
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 136
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 137
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 138
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 139
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 140
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 141
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 142
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 143
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 144
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 145
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 146
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 147
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 148
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 149
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 150
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 151
%square[aux]23:2, parents:0, square[aux]23:2, parents:1, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 152
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 153
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 154
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 155
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 156
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 157
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 158
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 159
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 160
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 161
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 162
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 163
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 164
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 165
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 166
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 167
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 168
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 169
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G).
;; 170
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G).
;; 171
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G).
;; 172
%square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G).
;; 173
%square[aux]23:2, parents:1, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 174
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 175
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 176
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 177
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 178
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 179
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 180
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 181
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 182
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 183
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 184
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 185
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 186
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 187
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 188
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 189
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 190
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 191
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 192
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 193
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 194
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 195
%square[aux]23:2, parents:1, square[aux]23:2, parents:0, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 196
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 197
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 198
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 199
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 200
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 201
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 202
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 203
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 204
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 205
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 206
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 207
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 208
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 209
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 210
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 211
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 212
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 213
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), son(H, G), child(Alter, H).
;; 214
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), daughter(H, G), child(Alter, H).
;; 215
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), son(H, G), child(Alter, H).
;; 216
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:0, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext], [ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), daughter(H, G), child(Alter, H).
;; 217
%square[aux]23:2, parents:1, square[aux]23:2, parents:1, square[aux]23:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), parent(Alter, B).


square[aux]23small(Alter, Ego) :-  generation[aux]23small(Alter, Ego).
                               |   parent(Alter, Ego).
                               |   parents(A, Ego), square[aux]23small(Alter, A).
;; 0
%square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, Ego), child(Alter, A), child(Alter, B), not(equal(Alter, Ego)).
;; 1
%square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 2
%square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 3
%square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), male(D), child(Alter, D).
;; 4
%square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, A), child(D, B), child(D, C), not(equal(D, A)), female(D), child(Alter, D).
;; 5
%square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 parent(Alter, Ego).
;; 6
%square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 7
%square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 8
%square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 9
%square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 10
%square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 11
%square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), parent(Alter, A).
;; 12
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 13
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 14
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 15
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 16
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 17
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), mother(B, A), parent(Alter, B).
;; 18
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 19
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 20
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 21
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 22
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 23
%square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 mother(A, Ego), father(B, A), parent(Alter, B).
;; 24
%square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)).
;; 25
%square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 26
%square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 27
%square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E).
;; 28
%square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E).
;; 29
%square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), parent(Alter, A).
;; 30
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 31
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 32
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 33
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 34
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 35
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), mother(B, A), parent(Alter, B).
;; 36
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)).
;; 37
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 38
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 39
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F).
;; 40
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=0, S=0, Star=0,  {None}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F).
;; 41
%square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
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


tutit(Alter, Ego) :-  male(Ego), mother(A, Ego), brother(Alter, A).
                  |   female(Ego), mother(A, Ego), brother(Alter, A).
                  |  [ext],  male(Ego), mother(A, Ego), generation[aux]23(Alter, A), male(Alter).
                  |  [ext],  female(Ego), mother(A, Ego), generation[aux]23(Alter, A), male(Alter).
{"MoBro_MoFaBroSo_MoFaFaBroDaSo_MoFaFaBroSoSo_MoFaFaSisDaSo_MoFaFaSisSoSo_MoFaMoBroDaSo_MoFaMoBroSoSo_MoFaMoSisDaSo_MoFaMoSisSoSo_MoFaSisSo_MoMoBroSo_MoMoFaBroDaSo_MoMoFaBroSoSo_MoMoFaSisDaSo_MoMoFaSisSoSo_MoMoMoBroDaSo_MoMoMoBroSoSo_MoMoMoSisDaSo_MoMoMoSisSoSo_MoMoSisSo"}
;; 0
%tutit:0, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 1
%tutit:1, brother:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
 female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 2
%tutit:2, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 3
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 4
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 5
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 6
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 7
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 8
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 9
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 10
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 11
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 12
%tutit:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 13
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 14
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 15
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 16
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 17
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 18
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 19
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 20
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 21
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 22
%tutit:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext], [ext], [ext],  male(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 23
%tutit:3, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {MoBro}  
[ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), male(Alter).
;; 24
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoBroSo}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 25
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoMoSisSo}  
[ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 26
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 27
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoBroDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 28
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 29
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoMoSisDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 30
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 31
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaBroDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 32
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 33
%tutit:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoMoFaSisDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 34
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaBroSo}  
[ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), male(Alter).
;; 35
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {MoFaSisSo}  
[ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), male(Alter).
;; 36
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 37
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoBroDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 38
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 39
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaMoSisDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).
;; 40
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), male(Alter).
;; 41
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaBroDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), male(Alter).
;; 42
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisSoSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), male(Alter).
;; 43
%tutit:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {MoFaFaSisDaSo}  
[ext], [ext], [ext],  female(Ego), mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), male(Alter).


uki_i(Alter, Ego) :-  wife(Ego, A), sister(Alter, A).
                  |   female(Ego), brother(A, Ego), wife(Alter, A).
                  |  [ext],  wife(Ego, A), even_gen[aux]23(Alter, A), female(Alter).
                  |  [ext],  female(Ego), even_gen[aux]23(A, Ego), wife(Alter, A).
{"BroWi_FaBroSoWi_FaFaBroSoSoWi_FaFaSisSoSoWi_FaMoBroSoSoWi_FaMoSisSoSoWi_HuFaBroDa_HuFaFaBroSoDa_HuFaFaSisSoDa_HuFaMoBroSoDa_HuFaMoSisSoDa_HuMoFaBroDaDa_HuMoFaSisDaDa_HuMoMoBroDaDa_HuMoMoSisDaDa_HuMoSisDa_HuSis_MoFaBroDaSoWi_MoFaSisDaSoWi_MoMoBroDaSoWi_MoMoSisDaSoWi_MoSisSoWi"}
;; 0
%uki_i:0, sister:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {HuSis}  
 wife(Ego, A), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%uki_i:1, brother:0, sibling:0%
 Lvl=0,  PC=4, S=1, Star=0,  {BroWi}  
 female(Ego), mother(A, Ego), father(B, Ego), child(C, A), child(C, B), not(equal(C, Ego)), male(C), wife(Alter, C).
;; 2
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuFaBroDa}  
[ext],  wife(Ego, A), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), male(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 3
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {HuMoSisDa}  
[ext],  wife(Ego, A), parent(B, A), mother(C, D), father(E, D), child(B, C), child(B, E), not(equal(B, D)), female(B), child(Alter, D), gender(F, B), gender(F, D), female(Alter).
;; 4
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaSisSoDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 5
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaSisDaDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 6
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoSisSoDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 7
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoSisDaDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), mother(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 8
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaFaBroSoDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 9
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoFaBroDaDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), male(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 10
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {HuFaMoBroSoDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), son(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 11
%uki_i:2, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {HuMoMoBroDaDa}  
[ext], [ext],  wife(Ego, A), parent(B, A), father(C, D), mother(E, C), father(F, C), child(G, E), child(G, F), not(equal(G, C)), female(G), daughter(B, G), child(Alter, D), gender(H, B), gender(H, D), female(Alter).
;; 12
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {FaBroSoWi}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), male(A), child(E, C), gender(F, A), gender(F, C), wife(Alter, E).
;; 13
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=0,  PC=6, S=1, Star=0,  {MoSisSoWi}  
[ext],  female(Ego), parent(A, Ego), mother(B, C), father(D, C), child(A, B), child(A, D), not(equal(A, C)), female(A), child(E, C), gender(F, A), gender(F, C), wife(Alter, E).
;; 14
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaSisSoSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 15
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaSisDaSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 16
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoSisSoSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 17
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoSisDaSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), mother(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 18
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaFaBroSoSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), son(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 19
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoFaBroDaSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), male(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 20
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=0,  PC=8, S=1, Star=0,  {FaMoBroSoSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), son(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).
;; 21
%uki_i:3, even_gen[aux]23:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=0,  PC=8, S=1, Star=0,  {MoMoBroDaSoWi}  
[ext], [ext],  female(Ego), parent(A, Ego), father(B, C), mother(D, B), father(E, B), child(F, D), child(F, E), not(equal(F, B)), female(F), daughter(A, F), child(G, C), gender(H, A), gender(H, C), wife(Alter, G).


yariy(Alter, Ego) :-  parents(A, Ego), mother(Alter, A).
                  |   parents(A, Ego), parents(B, A), square[aux]23small(Alter, B), female(Alter).
{"FaFaFaBroDa_FaFaFaFaBroDa_FaFaFaFaMo_FaFaFaFaSis_FaFaFaFaSisDa_FaFaFaMo_FaFaFaMoBroDa_FaFaFaMoMo_FaFaFaMoSis_FaFaFaMoSisDa_FaFaFaSis_FaFaFaSisDa_FaFaMo_FaFaMoBroDa_FaFaMoFaBroDa_FaFaMoFaMo_FaFaMoFaSis_FaFaMoFaSisDa_FaFaMoMo_FaFaMoMoBroDa_FaFaMoMoMo_FaFaMoMoSis_FaFaMoMoSisDa_FaFaMoSis_FaFaMoSisDa_FaFaSis_FaMo_FaMoFaBroDa_FaMoFaFaBroDa_FaMoFaFaMo_FaMoFaFaSis_FaMoFaFaSisDa_FaMoFaMo_FaMoFaMoBroDa_FaMoFaMoMo_FaMoFaMoSis_FaMoFaMoSisDa_FaMoFaSis_FaMoFaSisDa_FaMoMo_FaMoMoBroDa_FaMoMoFaBroDa_FaMoMoFaMo_FaMoMoFaSis_FaMoMoFaSisDa_FaMoMoMo_FaMoMoMoBroDa_FaMoMoMoMo_FaMoMoMoSis_FaMoMoMoSisDa_FaMoMoSis_FaMoMoSisDa_FaMoSis_MoFaFaBroDa_MoFaFaFaBroDa_MoFaFaFaMo_MoFaFaFaSis_MoFaFaFaSisDa_MoFaFaMo_MoFaFaMoBroDa_MoFaFaMoMo_MoFaFaMoSis_MoFaFaMoSisDa_MoFaFaSis_MoFaFaSisDa_MoFaMo_MoFaMoBroDa_MoFaMoFaBroDa_MoFaMoFaMo_MoFaMoFaSis_MoFaMoFaSisDa_MoFaMoMo_MoFaMoMoBroDa_MoFaMoMoMo_MoFaMoMoSis_MoFaMoMoSisDa_MoFaMoSis_MoFaMoSisDa_MoFaSis_MoMo_MoMoFaBroDa_MoMoFaFaBroDa_MoMoFaFaMo_MoMoFaFaSis_MoMoFaFaSisDa_MoMoFaMo_MoMoFaMoBroDa_MoMoFaMoMo_MoMoFaMoSis_MoMoFaMoSisDa_MoMoFaSis_MoMoFaSisDa_MoMoMo_MoMoMoBroDa_MoMoMoFaBroDa_MoMoMoFaMo_MoMoMoFaSis_MoMoMoFaSisDa_MoMoMoMo_MoMoMoMoBroDa_MoMoMoMoMo_MoMoMoMoSis_MoMoMoMoSisDa_MoMoMoSis_MoMoMoSisDa_MoMoSis"}
;; 0
%yariy:0, parents:0%
 Lvl=2,  PC=2, S=0, Star=0,  {MoMo}  
 mother(A, Ego), mother(Alter, A).
;; 1
%yariy:0, parents:1%
 Lvl=2,  PC=2, S=0, Star=0,  {FaMo}  
 father(A, Ego), mother(Alter, A).
;; 2
%yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 3
%yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 4
%yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 5
%yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 6
%yariy:1, parents:0, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 7
%yariy:1, parents:0, parents:0, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoMoMo}  
 mother(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 8
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 9
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 10
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 11
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 12
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoMoFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 13
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 14
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoMoSis}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 15
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoMoMo}  
 mother(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 16
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoMoFaSis}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 17
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoMoFaMo}  
 mother(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 18
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoMoFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 19
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 20
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaMoSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 21
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaBroDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 22
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoMoFaFaSisDa}  
[ext],  mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 23
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoMoFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 24
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaMoSis}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 25
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaMoMo}  
 mother(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 26
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoMoFaFaSis}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 27
%yariy:1, parents:0, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoMoFaFaMo}  
 mother(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 28
%yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {MoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 29
%yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 30
%yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 31
%yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 32
%yariy:1, parents:0, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {MoFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 33
%yariy:1, parents:0, parents:1, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {MoFaMo}  
 mother(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 34
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 35
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 36
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoMoSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 37
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaBroDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 38
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaMoFaSisDa}  
[ext],  mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 39
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 40
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoMoSis}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 41
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoMoMo}  
 mother(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 42
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaMoFaSis}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 43
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaMoFaMo}  
 mother(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 44
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {MoFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 45
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 46
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaMoSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 47
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaBroDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 48
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {MoFaFaFaSisDa}  
[ext],  mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 49
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {MoFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 50
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaMoSis}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 51
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaMoMo}  
 mother(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 52
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {MoFaFaFaSis}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 53
%yariy:1, parents:0, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {MoFaFaFaMo}  
 mother(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 54
%yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 55
%yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 56
%yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 57
%yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 58
%yariy:1, parents:1, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 59
%yariy:1, parents:1, parents:0, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaMoMo}  
 father(A, Ego), mother(B, A), parent(Alter, B), female(Alter).
;; 60
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 61
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 62
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoMoSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 63
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaBroDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 64
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoMoFaSisDa}  
[ext],  father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 65
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 66
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoMoSis}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 67
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoMoMo}  
 father(A, Ego), mother(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 68
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoMoFaSis}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 69
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoMoFaMo}  
 father(A, Ego), mother(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 70
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaMoFaSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 71
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 72
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaMoSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 73
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaBroDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 74
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaMoFaFaSisDa}  
[ext],  father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 75
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaMoFaMo}  
 father(A, Ego), mother(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 76
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaMoSis}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 77
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaMoMo}  
 father(A, Ego), mother(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 78
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaMoFaFaSis}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 79
%yariy:1, parents:1, parents:0, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaMoFaFaMo}  
 father(A, Ego), mother(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 80
%yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=2,  PC=6, S=0, Star=0,  {FaFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, B), child(Alter, C), child(Alter, D), not(equal(Alter, B)), female(Alter).
;; 81
%yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 82
%yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 83
%yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), child(Alter, F), female(Alter).
;; 84
%yariy:1, parents:1, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=2,  PC=8, S=0, Star=0,  {FaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), child(Alter, F), female(Alter).
;; 85
%yariy:1, parents:1, parents:1, square[aux]23small:1%
 Lvl=3,  PC=3, S=0, Star=0,  {FaFaMo}  
 father(A, Ego), father(B, A), parent(Alter, B), female(Alter).
;; 86
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 87
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 88
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoMoSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 89
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaBroDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 90
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaMoFaSisDa}  
[ext],  father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 91
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaMoMo}  
 father(A, Ego), father(B, A), mother(C, B), parent(Alter, C), female(Alter).
;; 92
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoMoSis}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 93
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoMoMo}  
 father(A, Ego), father(B, A), mother(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 94
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaMoFaSis}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 95
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:0, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaMoFaMo}  
 father(A, Ego), father(B, A), mother(C, B), father(D, C), parent(Alter, D), female(Alter).
;; 96
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=3,  PC=7, S=0, Star=0,  {FaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(Alter, D), child(Alter, E), not(equal(Alter, C)), female(Alter).
;; 97
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 98
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:0, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaMoSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 99
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:0, brother:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaBroDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), male(G), child(Alter, G), female(Alter).
;; 100
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:1, parents:1, siblings:1, sister:0, sibling:0%
 Lvl=3,  PC=9, S=0, Star=0,  {FaFaFaFaSisDa}  
[ext],  father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(G, E), child(G, F), not(equal(G, D)), female(G), child(Alter, G), female(Alter).
;; 101
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=4,  PC=4, S=0, Star=0,  {FaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), parent(Alter, C), female(Alter).
;; 102
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaMoSis}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 103
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:0, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaMoMo}  
 father(A, Ego), father(B, A), father(C, B), mother(D, C), parent(Alter, D), female(Alter).
;; 104
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:0, generation[aux]23small:0, sibling:0%
 Lvl=4,  PC=8, S=0, Star=0,  {FaFaFaFaSis}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), mother(E, D), father(F, D), child(Alter, E), child(Alter, F), not(equal(Alter, D)), female(Alter).
;; 105
%yariy:1, parents:1, parents:1, square[aux]23small:2, parents:1, square[aux]23small:2, parents:1, square[aux]23small:1%
 Lvl=5,  PC=5, S=0, Star=0,  {FaFaFaFaMo}  
 father(A, Ego), father(B, A), father(C, B), father(D, C), parent(Alter, D), female(Alter).


yaye(Alter, Ego) :-  male(Ego), father(A, Ego), sister(Alter, A).
                 |   female(Ego), father(A, Ego), sister(Alter, A).
                 |  [ext],  male(Ego), father(A, Ego), generation[aux]23(Alter, A), female(Alter).
                 |  [ext],  female(Ego), father(A, Ego), generation[aux]23(Alter, A), female(Alter).
{"FaFaBroDa_FaFaFaBroDaDa_FaFaFaBroSoDa_FaFaFaSisDaDa_FaFaFaSisSoDa_FaFaMoBroDaDa_FaFaMoBroSoDa_FaFaMoSisDaDa_FaFaMoSisSoDa_FaFaSisDa_FaMoBroDa_FaMoFaBroDaDa_FaMoFaBroSoDa_FaMoFaSisDaDa_FaMoFaSisSoDa_FaMoMoBroDaDa_FaMoMoBroSoDa_FaMoMoSisDaDa_FaMoMoSisSoDa_FaMoSisDa_FaSis"}
;; 0
%yaye:0, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 male(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 1
%yaye:1, sister:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
 female(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 2
%yaye:2, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  male(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 3
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 4
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 5
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 6
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 7
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 8
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 9
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 10
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 11
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 12
%yaye:2, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 13
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 14
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 15
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 16
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 17
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 18
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 19
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 20
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 21
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 22
%yaye:2, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext], [ext], [ext],  male(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 23
%yaye:3, generation[aux]23:0, sibling:0%
 Lvl=1,  PC=5, S=0, Star=0,  {FaSis}  
[ext],  female(Ego), father(A, Ego), mother(B, A), father(C, A), child(Alter, B), child(Alter, C), not(equal(Alter, A)), female(Alter).
;; 24
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoBroDa}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 25
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaMoSisDa}  
[ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 26
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 27
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoBroDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 28
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 29
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoMoSisDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 30
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 31
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaBroDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 32
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 33
%yaye:3, generation[aux]23:1, parents:0, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaMoFaSisDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), mother(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 34
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaBroDa}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), male(E), child(Alter, E), female(Alter).
;; 35
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0%
 Lvl=1,  PC=7, S=0, Star=0,  {FaFaSisDa}  
[ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), father(D, B), child(E, C), child(E, D), not(equal(E, B)), female(E), child(Alter, E), female(Alter).
;; 36
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 37
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoBroDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 38
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 39
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:0, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaMoSisDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), mother(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).
;; 40
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), son(G, F), child(Alter, G), female(Alter).
;; 41
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:0, brother:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaBroDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), male(F), daughter(G, F), child(Alter, G), female(Alter).
;; 42
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:0%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisSoDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), son(G, F), child(Alter, G), female(Alter).
;; 43
%yaye:3, generation[aux]23:1, parents:1, generation[aux]23gs:1, parents:1, generation[aux]23gs:0, siblings:1, sister:0, sibling:0, children:1%
 Lvl=1,  PC=9, S=0, Star=0,  {FaFaFaSisDaDa}  
[ext], [ext], [ext],  female(Ego), father(A, Ego), father(B, A), father(C, B), mother(D, C), father(E, C), child(F, D), child(F, E), not(equal(F, C)), female(F), daughter(G, F), child(Alter, G), female(Alter).

