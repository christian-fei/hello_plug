defmodule HelloPlug.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_plug,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:cowboy, :plug, :logger],
     mod: {HelloPlug, []}]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
