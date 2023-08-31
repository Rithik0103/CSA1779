bird(sparrow, true).
bird(penguin, false).
bird(eagle, true).
bird(ostrich, false).
bird(albatross, true).

can_fly(Bird) :- bird(Bird, true).
cannot_fly(Bird) :- bird(Bird, false).
