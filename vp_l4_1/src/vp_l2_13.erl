-module(vp_l2_13).
-export([decode/1]).

decode([]) -> [];
decode([{Count, X} | Tail]) -> lists:duplicate(Count, X) ++ decode(Tail).
