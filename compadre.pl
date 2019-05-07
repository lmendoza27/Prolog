
salones(a,b,c,d).
%salones
salonA(juan,pepe,lucho,carlos).
salonB(ana,luis,lucas,gustavo).
salonC(rita,alicia,angelo,maria).
salonD(ramiro,lucy,angel,diana).

%hombres
hombre(juan).
hombre(pepe).
hombre(lucho).
hombre(carlos).
hombre(luis).
hombre(lucas).
hombre(gustavo).
hombre(angelo).
hombre(ramiro).
hombre(angel).
%mujeres
mujer(ana).
mujer(rita).
mujer(alicia).
mujer(maria).
mujer(lucy).
mujer(diana).

%Búsquedas

%Todos son hombres=??
hombres_salona(X,Y,Z,B):-salonA(X,Y,Z,B), hombre(X),hombre(Y),hombre(Z),hombre(B).
hombres_salonb(X,Y,Z,B):-salonB(X,Y,Z,B), hombre(X),hombre(Y),hombre(Z),hombre(B).
hombres_salonc(X,Y,Z,B):-salonC(X,Y,Z,B), hombre(X),hombre(Y),hombre(Z),hombre(B).
hombres_salond(X,Y,Z,B):-salonD(X,Y,Z,B), hombre(X),hombre(Y),hombre(Z),hombre(B).
%Muestra las mujeres

%Muestra las mujeres

mujeres:-mujer(X),write(""+X),nl,fail.




%Que no se encuentren en el Salón B
no_mujeresB:-mujer(X),salonB(A,D,E,Q),A\=X,D\=X,E\=X,Q\=X,write("En el salón B no están:"+X),nl,fail.
%Que no se encuentren en el Salón C
no_mujeresC:-mujer(X),salonC(A,D,E,Q),A\=X,D\=X,E\=X,Q\=X,write("En el salón C no están:"+X),nl,fail.
%Muestra las alumnas mujeres del salón B
mujeresB:-mujer(X),salonA(A,D,E,Q),salonC(M,N,O,P),salonD(F,G,H,I),A\=X,D\=X,E\=X,Q\=X,M\=X,N\=X,O\=X,P\=X,F\=X,G\=X,H\=X,I\=X,write("Las mujeres del salón B son:"+X),nl,fail.
%Muestra las alumnas mujeres del salón A
mujeresA:-mujer(X),salonB(A,D,E,Q),salonC(M,N,O,P),salonD(F,G,H,I),A\=X,D\=X,E\=X,Q\=X,M\=X,N\=X,O\=X,P\=X,F\=X,G\=X,H\=X,I\=X,write("Las mujeres del salón A son:"+X),nl,fail.

%Muestra las alumnas mujeres del salón C
mujeresC:-mujer(X),salonA(A,D,E,Q),salonB(M,N,O,P),salonD(F,G,H,I),A\=X,D\=X,E\=X,Q\=X,M\=X,N\=X,O\=X,P\=X,F\=X,G\=X,H\=X,I\=X,write("Las mujeres del salón C son:"+X),nl,fail.
%Muestra las alumnas mujeres del salón D

mujeresD:-mujer(X),salonA(A,D,E,Q),salonB(M,N,O,P),salonC(F,G,H,I),A\=X,D\=X,E\=X,Q\=X,M\=X,N\=X,O\=X,P\=X,F\=X,G\=X,H\=X,I\=X,write("Las mujeres del salón D son:"+X),nl,fail.

mujeresdelA:-no_mujeresA\=mujer(X),write("Las mujeres del salón A son"+X).


mujeresdelB:-no_mujeresB\=X,mujer(X),write("Las mujeres del salón B son"+X).

