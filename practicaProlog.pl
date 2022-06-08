:-consult(auxiliar).


% Pregunta 1
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
paraula1([j, u, i, c, i, o]).
paraula1([e, r, r, o, r]).
paraula1([v, i, c, i, o]).
paraula1([r, e, a]):-!.

% Pregunta 2
repetits([X|Y]):-compararLlista(X,Y). %Mira si hi hi ha un element repetit dintre del conjunt tant si esta invertit o no
repetits([_|Y]):-repetits(Y).
repetits([X|Y]):-reverse(X,X1),compararLlista(X1,Y).

compararLlista(X,[X|_]).
compararLlista(X,[_|Z]):-compararLlista(X,Z).


%Pregunta 3

/*Mostra les paraules*/
mostra([],_,_,_). %CasBase 
mostra([X|L],F,C,horitzontal):-gotoXY(F, C), escriu(X, blau), C1 is C+3, mostra(L,F,C1,horitzontal).
mostra([X|L],F,C,vertical):-gotoXY(F, C), escriu(X, vermell), F1 is F + 1, mostra(L,F1,C,vertical).

%Pregunta4

% creuats():-cls,solucio(P1,P2,P3,P4).
% %solucio(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13).
%  solucio(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13):-paraula(P1),length(P1,N1),
% N1 is 7 .

solucio(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14):-
treureP1(P1),
treureP2(P2),verificaP1P2(P1,P2),
treureP3(P3),verificaP2P3(P2,P3),
treureP4(P4),not(repetits([P4,P1])),verificaP2P4(P2,P4),
treureP5(P5),verificaP4P5(P4,P5),
treureP6(P6),
treureP7(P7),verificaP4P7(P4,P7),verificaP6P7(P6,P7),
treureP8(P8),not(repetits([P8,P7])),verificaP7P8(P7,P8),
treureP9(P9),not(repetits([P9,P7,P8])),verificaP8P9(P8,P9),
treureP10(P10),not(repetits([P10,P3])),verificaP9P10(P9,P10),
treureP11(P11),verificaP8P11(P8,P11),
treureP12(P12),not(repetits([P12,P7,P8,P9])),verificaP8P12(P8,P12),
treureP13(P13),not(repetits([P13,P11])),verificaP12P13(P12,P13),
treureP14(P14),not(repetits([P14,P10,P3])),verificaP13P14(P13,P14).

treureP1(P1):-paraula(P1),length(P1,N1),N1 is 7.
treureP2(P2):-paraula(P2),length(P2,N2),N2 is 11.
treureP3(P3):-paraula(P3),length(P3,N3),N3 is 5.
treureP4(P4):-paraula(P4),length(P4,N4),N4 is 7.
treureP5(P5):-paraula(P5),length(P5,N5),N5 is 3.
treureP6(P6):-paraula(P6),length(P6,N6),N6 is 10.
treureP7(P7):-paraula(P7),length(P7,N7),N7 is 8.
treureP8(P8):-paraula(P8),length(P8,N8),N8 is 8.
treureP9(P9):-paraula(P9),length(P9,N9),N9 is 8.
treureP10(P10):-paraula(P10),length(P10,N10),N10 is 5.
treureP11(P11):-paraula(P11),length(P11,N11),N11 is 6.
treureP12(P12):-paraula(P12),length(P12,N12),N12 is 8.
treureP13(P13):-paraula(P13),length(P13,N13),N13 is 6.
treureP14(P14):-paraula(P14),length(P14,N14),N14 is 5.

verificaP1P2(P1,[X|_]):-nth1(5,P1,X).
verificaP2P3(P2,P3):-nth1(3,P2,X),nth1(3,P3,X).
verificaP2P4(P2,P4):-nth1(11,P2,X),nth1(5,P4,X).
verificaP4P5(P4,P5):-nth1(7,P4,X),nth1(3,P5,X).
verificaP4P7(P4,P7):-nth1(3,P4,X),nth1(6,P7,X).
verificaP6P7(P6,P7):-nth1(8,P7,X),nth1(6,P6,X).
verificaP7P8(P7,P8):-nth1(1,P7,X),nth1(8,P8,X).
verificaP8P9([X|_],[X|_]).
verificaP9P10(P9,P10):-nth1(6,P9,X),nth1(2,P10,X).
verificaP8P11(P8,P11):-nth1(6,P8,X),nth1(4,P11,X).
verificaP8P12(P8,P12):-nth1(4,P8,X),nth1(5,P12,X).
verificaP12P13(P12,P13):-nth1(3,P12,X),nth1(6,P13,X).
verificaP13P14([X|_],[X|_]).









