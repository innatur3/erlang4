-module(vp_l2_11).
-export([encode_modified/1]).

encode_modified(L) -> encode_modified(L, []).

encode_modified([], Acc) -> lists:reverse(Acc);
encode_modified([H | T], Acc) -> encode_modified(T, add_to_acc_modified(H, Acc)).

add_to_acc_modified(H, [{N, H} | T]) -> [{N + 1, H} | T];
add_to_acc_modified(H, [H | T]) -> [{2, H} | T];
add_to_acc_modified(H, Acc) -> [H | Acc].