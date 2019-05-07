notas(gaspar,12,14).
notas(palacios,11,18).
notas(aparcana,13,14).


mayor:-notas(X,Y,Z),A is (Y+Z)/2,write(X+ "Los promedios son:"+A),nl,fail.
mayor:-notas(X,Y,Z),C is max(+Y,+Z),write(X+ "Su nota más alta es de"+C),nl,fail.
mayor:-notas(X,Y,Z),D is max(Y+Z/2),write(X+"El promedio más alto es de"+D),nl,fail.






