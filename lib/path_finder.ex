defmodule PathFinder do
  use Application

  def start(_type, _args) do
    IO.puts "---> Starting PathFinder"
    PathFinder.Supervisor.start_link()
  end
end
