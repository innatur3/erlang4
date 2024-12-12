-module(vp_l2_8).
-export([compress/1]).

compress([]) -> [];
compress([X]) -> [X];
compress([X, X | Tail]) -> compress([X | Tail]);
compress([X, Y | Tail]) -> [X | compress([Y | Tail])].
