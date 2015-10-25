defmodule HelloPlug.PlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  test "does something" do
    conn = conn(:get, "/")
           |> HelloPlug.Plug.call([])
    header = get_resp_header(conn, "x-plug")
    assert header == ["PlugPlug"]
  end
end
