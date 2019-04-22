defmodule FactorioHub.MixProject do
  use Mix.Project
  @name :factorio_hub
  @version "0.1.0"
  @deps [
    {:ecto, ">= 0.0.0"},
    {:postgrex, ">= 0.0.0"},
    {:ecto_sql, ">= 0.0.0"},
    {:faker, ">= 0.0.0", only: [:test, :dev]},
    {:absinthe, ">= 0.0.0"}
  ]

  @aliases [
    "ecto.reset": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate"],
    "seeds": ["run ./priv/repo/seeds/main.exs"]
  ]

  def project do
    [
      app: @name,
      version: @version,
      elixir: "~> 1.8",
      aliases: @aliases,
      start_permanent: Mix.env() == :prod,
      deps: @deps
    ]
  end

  def application do
    [
      mod: {FactorioHub.Application, []},
      extra_applications: [:logger]
    ]
  end
end
