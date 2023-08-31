planet(mercury, 0.39, false).
planet(venus, 0.72, false).
planet(earth, 1, true).
planet(mars, 1.52, true).
planet(jupiter, 5.2, true).
planet(saturn, 9.58, true).
planet(uranus, 19.22, true).
planet(neptune, 30.05, true).

planet_distance(Planet, Distance) :-
    planet(Planet, Distance, _).

planets_with_moons(Planet) :-
    planet(Planet, _, true).

planets_farther_than(Distance, Planet) :-
    planet(Planet, PlanetDistance, _),
    PlanetDistance > Distance.

planets_closer_than(Distance, Planet) :-
    planet(Planet, PlanetDistance, _),
    PlanetDistance < Distance.
