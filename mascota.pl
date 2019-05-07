mascota(bimbo).
mascota(iker).
mascota(princesa).
mascota(chester).
mascota(chesnot).
mascota(milechi).
mascota(tarzan).
mascota(bambi).


dueños(luis,bimbo).
dueños(enzo,iker).
dueños(luis,princesa).
dueños(lizbeth,chester).
dueños(lizbeth,chesnot).
dueños(lizbeth,milechi).
dueños(juan,tarzan).
dueños(luis,bambi).

dueño(luis).
dueño(enzo).
dueño(lizbeth).
dueño(juan).

%muestra la(s) mascota(s) del dueño correspondiente
mismascotas(X,Y):-dueños(X,Y),mascota(Y).

%muestra el dueño de dicha mascota
midueño(X,Y):-dueños(X,Y),dueño(X).


