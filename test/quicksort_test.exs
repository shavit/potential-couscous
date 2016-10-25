defmodule PathFinderQuickSortTest do
  use ExUnit.Case
  doctest PathFinder

  test "quicksort" do
    assert PathFinder.Draw.quicksort([4,3,5,7,6,1,2]) == [1,2,3,4,5,6,7]
  end
end
