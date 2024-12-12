-module(vp_l3_2.erl).
-export([words/1]).

words(BinText) ->
    binary:split(BinText, <<" ">>, [global]).