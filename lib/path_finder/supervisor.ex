defmodule PathFinder.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(PathFinder.Draw, [[:hello]])
    ]

    {:ok, pid} = supervise(children, strategy: :one_for_one)
  end
end
