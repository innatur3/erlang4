-module(vp_l2_6).
-export([is_palindrome/1]).

is_palindrome(List) -> List == lists:reverse(List).
