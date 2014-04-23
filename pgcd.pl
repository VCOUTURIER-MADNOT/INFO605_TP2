valid(X) :- number(X),X>0.
valid(X,Y) :- valid(X),valid(Y).

pgcd(X,X,X) :- valid(X,Y).
pgcd(X,Y,R) :- valid(X,Y), X<Y, pgcd(Y,X,R).
pgcd(X,Y,R) :- valid(X,Y), X>Y, Reste is X mod Y, Reste == 0.
pgcd(X,Y,R) :- valid(X,Y), X>Y, Reste is X mod Y, Reste \== 0, pgcd(Y,Reste,R).