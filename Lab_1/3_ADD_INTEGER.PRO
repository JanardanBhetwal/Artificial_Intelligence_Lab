% Add the content of an integer list.
DOMAINS
list=integer*
PREDICATES
add(list,integer)

CLAUSES
add([H|T],R):-
	add(T,R1),
	R=R1+H.
add([],0).
 
GOAL
add([1,2,3,4,5],R). 
