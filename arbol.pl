%HECHOS
esposo(andres,flor).
esposo(jose,maria).
padre(andres,luis).
padre(andres,jose).
padre(jose,telonio).

%REGLAS
abuelo(A,N):-padre(A,P),padre(P,N).
hermano(X,Y):-padre(P,X),padre(P,Y).
tio(T,S):-hermano(T,P),padre(P,S).
cuñado(S,Y):-padre(S,R),esposo(R,Y).
madre(M,X):-esposo(P,M),padre(P,X).


