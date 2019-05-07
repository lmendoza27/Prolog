suma(A,B,C):-C is A+B.
resta(A,B,C):-A>0,B>0,A>B,C is A-B.
multiplicacion(A,B,C):-A>0,B>0,C is A*B.
division(A,B,C):-A>0,B>0,C is A/B.

igual(A,A).

diferente(A,B):-A\==B.
