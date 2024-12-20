DOMAINS
list=integer* 

PREDICATES
start
read_a_list(list)
insert(integer,list,list)
display(list)
CLAUSES
start:-
 write("enter the numbers"),
 nl,
 write("enter 0 to stop"),nl,
 read_a_list([]). 
 read_a_list(Y):-
 readint(X),
 insert(X,Y,Z),
 read_a_list(Z).

insert(0,Y,_):-
 write("these were the elements you inserted"),
 nl,
 write("["),
 display(Y).

insert(X,Y,[X|Y]).
display([ ]):-
 write(" ]"),nl.
display([H|T]):-
 write(H),write("\t"),display(T).
GOAL
start. 