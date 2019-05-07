numeros(2,5,7).
numeros(8,9,6).
numeros(7,7,7).
numeros(3,1,6).
numeros(-1,1,3).
mayor:-numeros(X,Y,Z),X>Y,X>Z,write("El numero mayor es "+X),nl,fail.
mayor:-numeros(X,Y,Z),Z>Y,Z>X,write("El numero mayor es"+Z),nl,fail.
mayor:-numeros(X,Y,Z),Y>Z,Y>X,write("El numero mayor es"+Y),nl,fail.

igual:-numeros(X,Y,Z),Y=X,Z=X,Z=Y,write("Los números iguales son:"+X),nl,fail.

menor:-numeros(X,Y,Z),X<Y,X<Z,write("El número menor es"+X),nl,fail.
menor:-numeros(X,Y,Z),Y<X,Y<Z,write("El número menor es"+Y),nl,fail.
menor:-numeros(X,Y,Z),Z<X,Z<Y,write("El número menor es"+Z),nl,fail.

sumas:-numeros(X,Y,Z),A is X+Y+Z,write("La suma es:"+A),nl,fail.



promedios:-numeros(X,Y,Z),A is X+Y+Z,M is A/3,write("El promedio es:"+M),nl,fail.


promediomayor:-numeros(X,Y,Z),A is X+Y+Z,M is A/3,M<D,write("El promedio más alto es:"+D),nl,fail.
