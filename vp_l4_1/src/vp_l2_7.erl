-module(vp_l2_7).
-export([flatten/1]).

flatten([]) -> [];
flatten([Head | Tail]) when is_list(Head) -> flatten(Head) ++ flatten(Tail);
flatten([Head | Tail]) -> [Head | flatten(Tail)].