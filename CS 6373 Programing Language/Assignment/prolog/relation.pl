%The facts of relation database.
male(mike).
male(xiaoming).
male(jack).
female(annie).
female(katty).
female(cathrine).
female(sunny).
parent(annie,jack).
parent(katty,xiaoming).
parent(jack,cathrine).
parent(cathrine,mike).
parent(sunny,annie).
parent(sunny,katty).

%The rule of mother
mother(X,Y):-parent(X,Y),female(X).

%The rule of sister
sister(Y,Z):-parent(X,Y),parent(X,Z),female(Y),female(Z),not(Y=Z).
