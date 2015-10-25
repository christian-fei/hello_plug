defmodule HelloPlug.Plug do
  import Plug.Conn
  def init(options) do
    options
  end

  def call(conn, options) do
    put_resp_header(conn, "x-plug", "PlugPlug")
  end
end
