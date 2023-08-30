eligible(X) :-
    income(X, Y),
    Y >= 30000,
    credit_score(X, Z),
    Z >= 700.

income(john, 40000).
credit_score(john, 750).

is_eligible(X) :-
    eligible(X).