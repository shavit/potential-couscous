defmodule PathFinderDrawTest do
  use ExUnit.Case
  doctest PathFinder

  test "draw raw" do
    assert length(PathFinder.Draw.row 4) == 4
  end

  test "draw grid" do
    grid = PathFinder.Draw.grid [40,12]

    assert grid != []
  end
end
