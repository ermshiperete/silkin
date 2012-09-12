;;  Horn Clause Representation of Adam-and-Eve(Adr) Kinship Term-of-Address Rules

;;  The following 'header' gives some basic parameters of this kinship system:
(languageName, "Adam-and-Eve(Adr)") (author, "GMorris") (date, "Feb 14, 2011") (non_term, brother, children, half_brother, half_sister, parents, sibling, siblings, sister, spice, step_brother, step_daughter, step_father, step_mother, step_sister, step_son) (partial, false) (polygamyOK, true) (address, true) (recursiveLevels, 1)


;;  Kin Term Definitions:
;;	(Standard Macros are automatically incorporated.)

brother(Alter, Ego) :-  sibling(Alter, Ego), male(Alter).


children(Alter, Ego) :-  son(Alter, Ego).
                     |   daughter(Alter, Ego).


half_brother(Alter, Ego) :-  mother(M, Ego), father(F, Ego), wife(W2, F), son(Alter, W2), son(Alter, F), not(equal(W2, M)).
                         |   mother(M, Ego), father(F, Ego), husband(H2, M), son(Alter, H2), son(Alter, M), not(equal(H2, F)).


half_sister(Alter, Ego) :-  mother(M, Ego), father(F, Ego), wife(W2, F), daughter(Alter, W2), daughter(Alter, F), not(equal(W2, M)).
                        |   mother(M, Ego), father(F, Ego), husband(H2, M), daughter(Alter, H2), daughter(Alter, M), not(equal(H2, F)).


parents(Alter, Ego) :-  mother(Alter, Ego).
                    |   father(Alter, Ego).


sibling(Alter, Ego) :-  mother(M, Ego), father(F, Ego), child(Alter, M), child(Alter, F), not(equal(Alter, Ego)).


siblings(Alter, Ego) :-  brother(Alter, Ego).
                     |   sister(Alter, Ego).


sister(Alter, Ego) :-  sibling(Alter, Ego), female(Alter).


spice(Alter, Ego) :-  husband(Alter, Ego).
                  |   wife(Alter, Ego).


step_brother(Alter, Ego) :-  father(F, Ego), mother(M, Ego), husband(H2, M), not(equal(H2, F)), wife(W, H2), not(equal(W, M)), son(Alter, W), son(Alter, H2).
                         |   father(F, Ego), mother(M, Ego), wife(W2, F), not(equal(W2, M)), husband(H, W2), not(equal(H, F)), son(Alter, H), son(Alter, W2).


step_daughter(Alter, Ego) :-  spouse(W, Ego), spouse(G, W), not(equal(Ego, G)), daughter(Alter, G), daughter(Alter, W).


step_father(Alter, Ego) :-  father(F, Ego), mother(M, Ego), husband(Alter, M), not(equal(Alter, F)).


step_mother(Alter, Ego) :-  father(F, Ego), mother(M, Ego), wife(Alter, F), not(equal(Alter, M)).


step_sister(Alter, Ego) :-  father(F, Ego), mother(M, Ego), husband(H2, M), not(equal(H2, F)), wife(W, H2), not(equal(W, M)), daughter(Alter, W), daughter(Alter, H2).
                        |   father(F, Ego), mother(M, Ego), wife(W2, F), not(equal(W2, M)), husband(H, W2), not(equal(H, F)), daughter(Alter, H), daughter(Alter, W2).


step_son(Alter, Ego) :-  spouse(W, Ego), spouse(G, W), not(equal(Ego, G)), son(Alter, G), son(Alter, W).

