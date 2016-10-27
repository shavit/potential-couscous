defmodule PathFinder do
  use Application

  def start(_type, _args) do
    PathFinder.Supervisor.start_link()
  end
end
