% Check whether the number is prime or not.

PREDICATES
is_prime(integer,integer)
check_prime(integer,integer,integer)
read_num()
answer(integer)

CLAUSES
check_prime(N,N,1):-!.
check_prime(N,D,0):-
	N mod D =0, !.
check_prime(N,D,R):-
	D1 = D+1,
	check_prime(N,D1,R).
	
is_prime(N,R):-
	check_prime(N,2,R).
	
answer(0):-
	write("Not a prime number.  ").
answer(1):-
	write("prime number.  ").


read_num():-
	write("Enter number:"),
	readint(A),nl,
	is_prime(A,R),
	answer(R).
	
GOAL
read_num().