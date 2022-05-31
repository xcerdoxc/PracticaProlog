cls:-write('\e[2J'), gotoXY(0,0).
gotoXY(X,Y):-write('\e['),write(Y),write(";"),write(X),write("H").

codi(negre,"\e[1;90m").
codi(vermell,"\e[1;91m").
codi(verd,"\e[1;92m").
codi(groc,"\e[1;93m").
codi(blau,"\e[1;94m").
codi(lila,"\e[1;95m").
codi(cel,"\e[1;96m").
codi(gris,"\e[1;97m").
codi(reset,"\e[m").

escriu(X,Color):-codi(Color,C),write(C),write(X),codi(reset,R),write(R).

diccionari(P):-paraula(M,S,P,nom,T,M,_,_,_,N,G,_,_,_,_),!,write(M),
               write(" "),write(S),
               write(" "),write(nom),
               write(" "),write(T),
               write(" "),write(N),
               write(" "),write(G),
               nl.

diccionari(P):-paraula(M,S,P,verb,_,_,Alt,Mode,Per,N,_,_,_,_,_),!,write(M),
               write(" "),write(verb),
               write(" "),write(S),
               write(" "),write(Per),write(" persona"),
               write(" "),write(N),
               write(" "),write(Mode),
               write(" "),write(Alt),
               nl.

diccionari(P):-paraula(M,S,P,F,T,_,_,_,_,N,G,_,_,_,_),write(M),
               write(" "),write(S),
               write(" "),write(F),
               write(" "),write(T),
               write(" "),write(N),
               write(" "),write(G),
               nl.

