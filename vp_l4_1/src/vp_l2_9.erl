-module(vp_l2_9).
-export([pack/1]).

pack([]) -> [];
pack([X]) -> [[X]];
pack([X, X | Tail]) -> [[X | Hd] | Tl] = pack([X | Tail]), [[X | Hd] | Tl];
pack([X, Y | Tail]) -> [[X] | pack([Y | Tail])].
