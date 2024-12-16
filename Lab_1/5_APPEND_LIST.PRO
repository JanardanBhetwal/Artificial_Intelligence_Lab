% Append two lists

DOMAINS
list=integer*

PREDICATES
append(list,list,list)
display(list)
do_append(list,list)

CLAUSES
append(L,[],L).
append(L,[H|T],[H|R]):-
	append(L,T,R).
	
do_append(L1,L2):-
	append(L2,L1,R),
	display(R).
	
display([ ]).
display([H|T]):-
	write(H),
	write("\t"),display(T).

GOAL
do_append([1,2,3,4,5],[2,4,6,8]).
