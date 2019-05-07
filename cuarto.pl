numeros(1,2,3).
numeros(0,3,1).
numeros(3,1,2).
numeros(1,1,1).

mayor:-numeros(X,Y,Z),X>Y,X>Z,write("El numero mayor es"+X),nl,fail.
mayor:-numeros(X,Y,Z),Y>X,Y>Z,write("El numero mayor es"+Y),nl,fail.

mayor:-numeros(X,Y,Z),Z>Y,Z>X,write("El numero mayor es"+Z),nl,fail.
mayor:-numeros(X,Y,Z),Z=Y,Y=X,X=Y,write("Son iguales los numeros"+Z+"y"+Y+"y"+Z),nl,fail.

