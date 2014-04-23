hanoi(N,D) :- deplacer(N,1,2,3,D).

deplacer(0,_,_,_,0).
deplacer(N,D,A,T,Depl) :- M is N-1, deplacer(M,D,T,A,Depl1), deplacer(M,T,A,D,Depl2), Depl is Depl1 + 1 + Depl2.