defmodule Broker.MixProject do
  use Mix.Project

  def project do
    [
      app: :rtp,
      version: "0.0.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Rtp.Application, []}
    ]
  end

  def deps do
    []
  end
end
