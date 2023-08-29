person(john, '1990-05-15').
person(emma, '1985-10-20').
person(michael, '1995-03-08').
person(sarah, '1982-07-03').

person_dob(Name, DOB) :- person(Name, DOB).

born_before(Year, Name, DOB) :-
    person(Name, DOB),
    sub_atom(DOB, 0, 4, _, DOBYear),
    atom_number(DOBYear, DOBYearNumber),
    DOBYearNumber < Year.

born_after(Year, Name, DOB) :-
    person(Name, DOB),
    sub_atom(DOB, 0, 4, _, DOBYear),
    atom_number(DOBYear, DOBYearNumber),
    DOBYearNumber > Year.
