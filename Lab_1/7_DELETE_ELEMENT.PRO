% Delete integer from list

DOMAINS
list=integer*

PREDICATES
delete(integer,list,list)
display(list)
do_delete(integer,list)

CLAUSES
delete(X,[],R).
delete(X,[X|T],R):-
	R=T,
	delete(X,T,R).
delete(X,[Y|T],[Y|R]):-
	delete(X,T,R).
	
do_delete(X,L):-
	delete(X,L,R),
	display(R).
	
display([ ]).
display([H|T]):-
	write(H),
	write("\t"),display(T).

GOAL
do_delete(3,[1,2,3,4,5]).
