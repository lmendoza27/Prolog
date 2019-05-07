%hombres
varon(cesar).
varon(edilberto).
varon(sancho).
varon(juan).
varon(luis).
varon(joaquin).
varon(hector).
varon(hernan).
varon(cesar-ii).
varon(pierr).
varon(henry).
varon(oscar).
%mujeres
mujer(marlene).
mujer(janina).
mujer(angie).
mujer(alicia).
%progenitor
papa(cesar,edilberto).
papa(cesar,sancho).
papa(edilberto,juan).
papa(edilberto,janina).
papa(marlene,luis).
papa(marlene,joaquin).
papa(juan,luis).
papa(juan,joaquin).
papa(janina,hernan).
papa(janina,cesar-ii).
papa(janina,angie).
papa(hector,hernan).
papa(hector,cesar-ii).
papa(hector,angie).
papa(hector,pierr).
papa(sancho,henry).
papa(henry,oscar).
papa(alicia,oscar).
mama(janina,angie).
mama(janina,hernan).
mama(janina,cesar-ii).

%reglas
nieto(C,A):-papa(A,B),papa(B,C),write(C+" es nieto de:"+A).%C es el nieto
abuelo(A,C):-papa(A,B),papa(B,C),write(A+" es el abuelo de:"+C).%A es el abuelo
bis_nieto(X,Y):-abuelo(Y,C),papa(C,X),write(X+" es el bisnieto de:"+Y).%X es el bisnieto
bis_abuelo(Y,X):-abuelo(Y,C),papa(C,X),write(Y+" es el bisabuelo de:"+X).%Y es el bisabuelo
hermano(B,C):-papa(A,B),papa(A,C),varon(C),not(B=C).
hermana(B,C):-papa(A,B),papa(A,C),mujer(C),not(B=C),write(C+" es hermana de:"+B).

tio(X,Y):-papa(M,Y),hermano(M,X),write(X+" es tío de: "+Y).% Y es el sobrino
tia(X,Y):-papa(M,Y),hermana(M,X),write(X+" es tía de: "+Y).% Y es el sobrino

primo(X,Y):-papa(A,X),papa(B,Y),hermano(A,B),write(X+" es primo de: "+Y).
prima(X,Y):-papa(A,X),papa(B,Y),hermano(A,B),mujer(X),write(X+" es primo de: "+Y).%X es prima

sobrino(Y,X):-papa(M,Y),hermano(M,X),write(Y+" es sobrino(a) de: "+X).% Y es sobrino


medio_hermano(X,Y):-papa(A,X),papa(A,Y),mama(B,Y),not(mama(B,X)),varon(A),mujer(B),dif(X,Y).










