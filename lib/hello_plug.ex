defmodule HelloPlug do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(HelloPlug.Worker, [])
    ]
    Supervisor.start_link(children, [
      strategy: :one_for_one,
      name: HelloPlug.Supervisor
    ])
  end
end
