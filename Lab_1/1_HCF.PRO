% Find HCF of two numbers.

PREDICATES
hcf(integer,integer,integer)

read_num(integer)


CLAUSES
hcf(X,0,Z):-
	Z=X.
	
hcf(X,Y,Z):-
	R = X mod Y,
	hcf(Y,R, Z).

 
read_num(Z):-
	write("Enter the first number:"),
	readint(A),
	nl,
	write("Enter the second number:"),
	readint(B),
	nl,
	write("The HCF of two numbers is :"),
	hcf(A,B,Z). 
	
GOAL
read_num(Z).
	
