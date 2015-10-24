defmodule HelloPlug.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(opts) do
    children = [
      worker(HelloPlug.Worker, [])
    ]
    supervise(children, strategy: :one_for_one)
  end
end
