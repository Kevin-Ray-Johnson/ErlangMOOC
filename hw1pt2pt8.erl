-module(hw1pt2pt8).
-include_lib("eunit/include/eunit.hrl").
-export([xor1/2, xor2/2, xor3/2, maxThree/3, howManyEqual/3]).

xor1(A, B) ->
    (A and not B) or (not A and B).

xor2(A, A) -> false;
xor2(_, _) -> true.

xor3(A, B) ->
    if (A ==  B) -> false;
       (A /= B) -> true
    end.
    
maxThree(X, Y, Z) ->
    max(X, max(Y, Z)).

howManyEqual(X, X, X) -> 3;
howManyEqual(X, X, _) -> 2;
howManyEqual(X, _, X) -> 2;
howManyEqual(_, X, X) -> 2;
howManyEqual(_, _, _) -> 0.

xor1_test() ->
    false = xor1(false,false),
    true  = xor1(true, false),
    true  = xor1(false,true),
    false = xor1(true, true).
xor2_test() ->
    false = xor2(false,false),
    true  = xor2(true, false),
    true  = xor2(false,true),
    false = xor2(true, true).
xor3_test() ->
    false = xor3(false,false),
    true  = xor3(true, false),
    true  = xor3(false,true),
    false = xor3(true, true).
maxThree_test() ->
    3 = maxThree(1,2,3),
    3 = maxThree(1,3,2),
    3 = maxThree(3,2,1).
howManyEqual_test() ->
    3 = howManyEqual(a,a,a),
    2 = howManyEqual(a,a,b),
    2 = howManyEqual(a,b,a),
    2 = howManyEqual(b,a,a),
    0 = howManyEqual(a,b,c).
    
