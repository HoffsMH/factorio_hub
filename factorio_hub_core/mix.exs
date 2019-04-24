Code.require_file("#{System.get_env("PROJECT_ROOT")}/meta/deps/elixir/mix_common.exs")

defmodule FactorioHub.Core.MixProject do
  use Mix.Project
  alias Mix.Common

  @aliases [
    "ecto.reset": ["ecto.drop --quiet", "ecto.create --quiet", "ecto.migrate"],
    seeds: ["run ./priv/repo/seeds/main.exs"]
  ]

  def project() do
    Common.project(
      :factorio_hub_core,
      &deps/1,
      "Core site functionality for FactorioHub",
      aliases: @aliases
    )
  end

  def deps(_) do
    [
      internal: [],
      external: [
        {:ecto},
        {:postgrex},
        {:ecto_sql},
        {:absinthe, only: [:test, :dev]}
      ]
    ]
  end
end
