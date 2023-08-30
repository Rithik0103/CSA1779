symptom(john, fever).
symptom(john, runny_nose).
symptom(john, sneezing).
symptom(mary, runny_nose).
symptom(mary, sneezing).

cold(X) :-
    symptom(X, fever),
    symptom(X, runny_nose),
    symptom(X, sneezing).

diagnosis(X, cold) :-
    cold(X).

