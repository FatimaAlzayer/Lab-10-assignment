% dataset
user("Fatima",234).
user("Ali",a005).
user("Ahmad",tt06).

start:- attempt(1).

login(A):-
write("enter name"),nl,
read(N),
write("enter password"),nl,
read(P),
check(N,P,A).

check(N,P,_):- user(N,P),!,write("Login Successful"),nl.
check(_,_,A):- write("Login unsuccessful"),nl,
New_A is A+1,
Attempts_left is 3 - A,
write("attempt left is "), write(Attempts_left),nl,
attempt(New_A).

attempt(A):- A>3,!, write("Sorry, you exceeded the maximum number of attempts, try again later"),nl.

attempt(A):- login(A).