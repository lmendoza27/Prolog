%adaddadada
observa(belen,carlos). % belen observa a Carlos
observa(federico,maria).
observa(federico,karla).
observa(_,maria).

%restricciones de estas reglas
feliz(pedro). %Pedro es feliz
feliz(X) :- observa(federico,X). %X es feliz siempre que observa a federico
feliz(X) :- observa(belen,X).

