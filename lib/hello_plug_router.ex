defmodule HelloPlug.Router do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end
  if Mix.env != :test do
    plug Plug.Logger
  end

  plug HelloPlug.Plug
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hello Plug!")
  end

  match _ do
    raise "oh my god"
  end

end
