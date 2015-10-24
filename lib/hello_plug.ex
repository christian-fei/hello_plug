defmodule HelloPlug do
  use Application

  def start(_type, _args) do
    HelloPlug.Supervisor.start_link
  end
end
