edad(victor,30).
edad(ana,18).
edad(juan,16).

mayo:-edad(X,Y),Y>17,write("Son mayores de edad"+X +"con"+Y +"años"),nl,fail.
mayo:-edad(X,Y),Y<18,write("Son menores de edad"+X +"con"+Y +"años"),nl,fail.
mayo:-edad(X,Y),,write("El mayor de todos es:"+Y),nl,fail.
