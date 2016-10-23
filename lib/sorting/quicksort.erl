-module(quicksort).
-compile(export_all).

sort([]) ->
  % io:fwrite("---> Starting\n").
  [];

sort([First|Tail]) ->
  % io:fwrite("---> Sort head tail\n").
  sort([A || A <- Tail, First > A]) ++
  [First] ++
  sort([A || A <- Tail, First =< A]).

get_list() ->
  [4,2,4,6,7,4,2,4,6,89,34,1,0].
