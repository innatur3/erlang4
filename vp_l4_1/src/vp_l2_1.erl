-module(vp_l2_1).
-export([last/1]).

last([X]) -> X;
last([_ | Tail]) -> last(Tail).