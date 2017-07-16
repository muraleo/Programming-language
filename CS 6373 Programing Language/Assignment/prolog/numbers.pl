%Maximum of the list
maximum([M],M).
maximum([Head|Tail],X):-maximum(Tail,X), X>Head.
maximum([Head|Tail],Head):-maximum(Tail,X), Head>X.

%The intersection of two given list parameters is empty
intersect([],[]).
intersect([],[Head|Tail]).
intersect([Head|Tail],[]).
intersect([Head|Tail],Y):-intersect(Tail,Y),not(memberchk(Head,Y)).
intersect_empty(X,Y):-intersect(X,Y).

%Union of two lists
union([],X,X).
union([Head|Tail],Y,U):-memberchk(Head,Y),!,union(Tail,Y,U).
union([Head|Tail],Y,[Head|U]):-union(Tail,Y,U).

%Retuen the final element
return_final([],[]).
return_final([X],X).
return_final([Head|Tail],F):-return_final(Tail,F).

%QuickSort
quicksort([],[]).
quicksort([Head|Tail],Result):-
	partition(Head,Tail,Small_list,Big_list),
	quicksort(Small_list,Small_result),
	quicksort(Big_list,Big_result),
	append(Small_result,[Head|Big_result],Result). %cannot be [Small_result|Head]

partition(_,[],[],[]).
partition(X,[Head|Tail],[Head|Small_list],Big_list):-
	X>=Head,partition(X,Tail,Small_list,Big_list).
partition(X,[Head|Tail],Small_list,[Head|Big_list]):-
	X<Head,partition(X,Tail,Small_list,Big_list).
