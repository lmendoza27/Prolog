
estudiante(luis).
estudiante(henry).
estudiante(jos�).
estudiante(mendez).
estudiante(edward).
estudiante(piero).
estudiante(carlos).
estudia(matem�tica,luis).
estudia(comunicaci�n,henry).
estudia(ciencias,jos�).
estudia(arte,mendez).
estudia(matem�tica,edward).
estudia(matem�tica,piero).
estudia(arte,carlos).
curso(matem�tica).
curso(comunicaci�n).
curso(ciencias).
curso(arte).



compa�erocurso(X,Y):-estudia(M,Y),estudia(M,X).
cursando(X,Y):-estudia(Y,M),estudia(X,M).
