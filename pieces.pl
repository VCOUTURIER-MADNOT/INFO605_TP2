jeu(Xd,Yd,Zd,X,X,X) :- transition(Xd,Yd,Zd,X1,Y1,Z1),transition(X1,Y1,Z1,X2,Y2,Z2),transition(X2,Y2,Z2,X,X,X), afficher(Xd,Yd,Zd), afficher(X1,Y1,Z1), afficher(X2,Y2,Z2), afficher(R,R,R).
jeu(X,Y,Z) :- jeu(X,Y,Z,_,_,_).

transition(X1,Y1,Z,X2,Y2,Z) :- retourner(X1,X2), retourner(Y1,Y2).
transition(X1,Y,Z1,X2,Y,Z2) :- retourner(X1,X2), retourner(Z1,Z2).
transition(X,Y1,Z1,X,Y2,Z2) :- retourner(Z1,Z2), retourner(Y1,Y2).

retourner(pile,face).
retourner(face,pile).

afficher(X,Y,Z) :- write(X), write(','), write(Y),write(','),write(Z),nl.