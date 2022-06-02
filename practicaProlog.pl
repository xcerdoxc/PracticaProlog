:-consult(auxiliar).
paraula(X):-pertany(X). %Funcio Paraula- Carrega totes les paraules a la base de coneixements
pertany(X):-paraula1(X). %Funcio Pertany->Genera les paraules tant en normal com invertit
pertany(X):- paraula1(Y),reverse(Y,X).
paraula1([d,e,m,o,c,r,a,c,i,a]).
paraula1([e,n,c,o,n,t,r,a,r,s,e]).
paraula1([e, m, b, o, s, c, a, r]).
paraula1([a, b, o, r, d, a, j, e]).
paraula1([c, o, n, v, e, x, o]).
paraula1([e, v, a, d, i, r, s, e]).
paraula1([e, l, e, v, a, r, s, e]).
paraula1([e, s, c, u, e, l, a]).
paraula1([c, u, e, r, p, o]).
paraula1([j, u, g, a, r]).
paraula1([e, r, r, o, r]).
paraula1([v, i, c, i, o]).
paraula1([r, e, a]):-!.

repetits([X|Y]):-compararLlista(X,Y). %Mira si hi hi ha un element repetit dintre del conjunt tant si esta invertit o no
repetits([_|Y]):-repetits(Y).
repetits([X|Y]):-reverse(X,X1),compararLlista(X1,Y).

compararLlista(X,[X|_]).
compararLlista(X,[_|Z]):-compararLlista(X,Z).

% creuats():-cls,solucio(P1,P2,P3,P4).
% %solucio(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13).
%  solucio(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13):-paraula(P1),length(P1,N1),
% N1 is 7 .
solucio(P1,P2,P3,P4):-
paraula(P1),length(P1,N1),N1 is 7,
paraula(P2),length(P2,N2),N2 is 10,
paraula(P3),length(P3,N3),N3 is 5,
paraula(P4),length(P4,N4),N4 is 7,repetits([P4|P1]).
