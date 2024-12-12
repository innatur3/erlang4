-module(vp_l3_1.erl).
-export([first_word/1]).

first_word(BinText) ->
    case binary:split(BinText, <<" ">>) of
        [FirstWord | _Rest] -> FirstWord;
        [] -> <<>>
    end.