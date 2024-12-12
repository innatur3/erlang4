-module(vp_l2_14).
-export([duplicate/1]).

duplicate([]) -> [];
duplicate([X | Tail]) -> [X, X | duplicate(Tail)].
