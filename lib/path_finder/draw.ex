#
# Child process under the supervisor
#
# We will create a genserver that will represent a stack
#
defmodule PathFinder.Draw do
  use GenServer

  def start_link(state, opts \\ []) do
    IO.puts "---> Start link"
    GenServer.start_link(__MODULE__, state, opts)
  end

  def handle_call(:pop, _from_, [h | t]) do
    IO.puts "---> Handle call"
    {:reply, h, t}
  end

  def handle_cast({:push, h}, t) do
    {:noreply, [h | t]}
  end

  def cell(_cell_type) do
    "."
  end

  def row(width) do
    cond do
      width > 1 -> ["."] ++ row(width-1)
      true -> ["."]
    end
  end

  def grid([w,h]) do
    cond do
      h > 2 -> grid([w, h-1])
      true -> IO.puts List.to_string(row(w))
    end
    IO.puts List.to_string(row(w))
  end

  def quicksort([]), do: []

  def quicksort(list) do
    [first_part | rest ] = list
    {a,b} = Enum.partition(rest, (fn item -> first_part > item end))
    quicksort(a) ++ [first_part] ++ quicksort(b)
  end
end

PathFinder.Draw.grid([1,2])
