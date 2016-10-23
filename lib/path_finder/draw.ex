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

  def quicksort(list) do
    
  end
end
