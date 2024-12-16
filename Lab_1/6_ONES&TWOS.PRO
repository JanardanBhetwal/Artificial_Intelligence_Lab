% Displaying only 1s and 2s


DOMAINS
list=integer*

PREDICATES
ones_2s(list,list)
display(list)
do_1s_2s(list)

CLAUSES
ones_2s([],[]).
ones_2s([1|T],[1|R]):-
	ones_2s(T,R).
ones_2s([2|T],[2|R]):-
	ones_2s(T,R).
ones_2s([_|T],R):-
	ones_2s(T,R).
	
do_1s_2s(L):-
	ones_2s(L,R),
	display(R).
	
display([ ]).
display([H|T]):-
	write(H),
	write("\t"),display(T).

GOAL
do_1s_2s([1,2,3,2,2,1,2,4,6]).
