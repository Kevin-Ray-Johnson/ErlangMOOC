-module(simple).
-export([howManyEqual/2,exOr/2]).

howManyEqual(X,X) ->
    2;
howManyEqual(_X,_Y) ->
    0.


exOr(true,X) ->
    not(X);
exOr(false,X) ->
    X.
