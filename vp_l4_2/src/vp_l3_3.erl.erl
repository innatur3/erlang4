-module(vp_l3_3.erl).
-export([split/2]).

split(BinText, Delimiter) ->
    BinDelimiter = <<Delimiter/binary>>,
    binary:split(BinText, BinDelimiter, [global, trim]).
