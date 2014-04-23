:-dynamic fibo/2.

fibo(0,0).
fibo(1,1).
fibo(N,R) :- number(N), N>1, Na is N-1, fibo(Na, Ra), Nb is N-2, fibo(Nb, Rb), R is Ra+Rb, asserta(fibo(N,R)).