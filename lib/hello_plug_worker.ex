defmodule HelloPlug.Worker do
  def start_link do
    Plug.Adapters.Cowboy.http HelloPlug.Router, []
  end
end
