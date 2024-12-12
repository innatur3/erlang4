-module(vp_l2_2).
-export([but_last/1]).

but_last([X, Y]) ->  [X, Y];
but_last([_ | Tail]) -> but_last(Tail).