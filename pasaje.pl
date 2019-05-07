pasaje(ica,25).
pasaje(arequipa,50).
pasaje(tacna,125).

alojamiento(ica,hotel,100).
alojamiento(ica,hostal,60).
alojamiento(ica,albergue,20).
alojamiento(arequipa,hotel,120).
alojamiento(arequipa,hostal,80).
alojamiento(arequipa,albergue,30).
alojamiento(tacna,hotel,80).
alojamiento(tacna,hostal,50).
alojamiento(tacna,albergue,30).


viaje(W,X,Y,Z):-pasaje(W,A),alojamiento(W,Y,C),B is C*X,Z is (A+B),write(Z).
viajeper(W,X,Y,Z,O):-pasaje(W,A),alojamiento(W,Y,C),B is C*X*O,Z is (A+B),write(Z).
costo100(W,X,Y,Z):-pasaje(W,A),Z<100,alojamiento(W,Y,C),B is C*X,Z is (A+B),write(Z).
pres(W,X,D):-viaje(W,X,Y,Z),pasaje(W,A),alojamiento(W,Y,C),B is C*X,Z is (A+B),Z<D,write("Con un presupuesto de "+D+"podré ir a "+Y+"con un costo de:"+Z).



%Reglas

%Mayor costo por 3 dias
%410 Hotel Arequipa

%Mayor costo por 5 dias
%650 Hotel Arequipa


%Presupuesto de 100
%






%Hotel en Ica - Noches



%Hostal en Ica - Noches



%Albergue en Ica - Noches




