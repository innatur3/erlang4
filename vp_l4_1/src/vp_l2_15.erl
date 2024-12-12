-module(lvp_l2_15).
-export([replicate/2]).

replicate([], _) -> [];
replicate([X | Tail], N) -> lists:duplicate(N, X) ++ replicate(Tail, N).