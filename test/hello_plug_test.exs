defmodule HelloPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias HelloPlug.Router

  @opts Router.init([])

  test "returns hello world" do
    conn = conn(:get, "/")
    conn = Router.call(conn, @opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Hello Plug!"
  end
end
