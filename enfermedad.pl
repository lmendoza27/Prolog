%ejemplo de enfermedades
% se puede transmitir por:jeringa,esposo a madre,dependiendo de los
% progenitores
madre(luisa,jorge).
madre(luisa,adam).
madre(ana,marlene).
madre(ana,pamela).
madre(ana,patricia).
madre(bertha,renato).
madre(teresa,mario).
madre(marlene,valeria).
madre(marlene,valentina).
madre(patricia,luciano).
madre(patricia,giorgio).
madre(belissa,valentino).

esposo(teofilo,luisa).
esposo(jorge,ana).
esposo(adam,bertha).
esposo(renato,teresa).
esposo(raul,marlene).
esposo(fidel,patricia).
esposo(giorgio,belissa).

% LAS REGLAS para determinar al culpable de la transmision de la
% enfermedad
%01
hemofilico_por_jeringa(jorge).
hemofilico_por_jeringa(bertha).
hemofilico(H):-hemofilico_por_jeringa(H).
hemofilico(H):-esposo(Y,H),hemofilico(Y).
hemofilico(H):-madre(Y,H),hemofilico(Y).
%02
progenitor(X,Y):-madre(X,Y).
progenitor(X,Y):-esposo(X,Z),madre(Z,Y).
%03
desc(X,Y):-progenitor(X,Y).
desc(X,Y):-progenitor(Y,Z),desc(X,Z).
%04
culpable(X,Y):-hemofilico(Y),hemofilico_por_jeringa(X),desc(Y,X).
culpable(X,Y):-hemofilico(Y),hemofilico_por_jeringa(X),desc(Z,X),esposo(Z,Y).
culpable(X,Y):-hemofilico_por_jeringa(X),esposo(X,Y).









