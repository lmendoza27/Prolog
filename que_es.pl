es_padre(terach,abraham).
es_padre(terach,nachor).
es_padre(terach,haran).
es_padre(abraham,isaac).
es_padre(haran,lot).
es_padre(haran,milcah).
es_padre(haran,yiscah).
es_madre(sarah,isaac).
es_hombre(terach).
es_hombre(abraham).
es_hombre(nachor).
es_hombre(haran).
es_hombre(isacc).
es_hombre(lot).
es_mujer(sarah).
es_mujer(milcah).
es_mujer(yiscah).



%Reglas:

 es_hijo(X,Y):- es_padre(Y,X), es_hombre(X).
 es_hija(X,Y):- es_padre(Y,X), es_mujer(X).
 es_abuelo(X,Z):- es_padre(X,Y), es_padre(Y,Z).



%PREGUNTAS

% es_padre(abraham,isaac).
% es_padre(abraham,lot).
% es_padre(abraham,X).
%Sí. El programa contestará dando para X los
%valores que verifican dicha relación: X=isaac.
% es_padre(haran,X).

% es_hijo(lot,haran).



%Conjunción de Fines - Dos preguntas :

%  es_padre(haran,lot), es_hombre(lot).


% REGLAS:


% es_hijo(X,Y) :- es_padre(Y,X),
% es_hombre(X).


% es_hija(X,Y) :- es_padre(Y,X), es_mujer(X).
% es_abuelo(X,Z) :- es_padre(X,U), es_padre(U,Z).



