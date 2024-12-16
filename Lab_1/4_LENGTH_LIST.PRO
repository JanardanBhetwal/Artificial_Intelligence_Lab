% Find the length of the list.

DOMAINS
list=integer*

PREDICATES
add(list,integer)

CLAUSES
 
add([],0).
add([H|T],R):-
	add(T,R1),
	R=R1+1.
 
GOAL
add([2,6,8],X).
