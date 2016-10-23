defmodule Quicksort do

  # Run on empty list
  def sort([]), do: []

  def sort([first_part | rest]) do
    # Create a pivot on the first run
    {a,b} = Enum.partition(rest, (fn item -> first_part > item end))
    sort(a) ++ [first_part] ++ sort(b)
  end

  def get_list do
    [4,2,4,6,7,4,2,4,6,89,34,1,0]
  end
end
