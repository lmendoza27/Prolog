mascota(bimbo).
mascota(iker).
mascota(princesa).
mascota(chester).
mascota(chesnot).
mascota(milechi).
mascota(tarzan).
mascota(bambi).


due�os(luis,bimbo).
due�os(enzo,iker).
due�os(luis,princesa).
due�os(lizbeth,chester).
due�os(lizbeth,chesnot).
due�os(lizbeth,milechi).
due�os(juan,tarzan).
due�os(luis,bambi).

due�o(luis).
due�o(enzo).
due�o(lizbeth).
due�o(juan).

%muestra la(s) mascota(s) del due�o correspondiente
mismascotas(X,Y):-due�os(X,Y),mascota(Y).

%muestra el due�o de dicha mascota
midue�o(X,Y):-due�os(X,Y),due�o(X).


