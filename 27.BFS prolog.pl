connected(a, b).
connected(a, c).
connected(b, d).
connected(b, e).
connected(c, f).
connected(c, g).
connected(d, h).
connected(e, i).

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, PathRev),
    reverse(PathRev, Path).

bfs_queue([[Goal|Path]|_], Goal, [Goal|Path]).

bfs_queue([[Node|Path]|Paths], Goal, FinalPath) :-
    findall([Neighbor,Node|Path], (connected(Node, Neighbor), \+ member(Neighbor, [Node|Path])), NewPaths),
    append(Paths, NewPaths, UpdatedPaths),
    bfs_queue(UpdatedPaths, Goal, FinalPath).

find_bfs_path(Start, Goal, Path) :-
    bfs(Start, Goal, Path).
