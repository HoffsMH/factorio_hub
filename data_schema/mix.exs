Code.require_file("#{System.get_env("PROJECT_ROOT")}/meta/deps/elixir/mix_common.exs")

defmodule FactorioHub.DataSchema.MixProject do
  use Mix.Project
  alias Mix.Common

  @aliases [
  ]

  def project() do
    [aliases: @aliases] ++
    Common.project(
      :factorio_hub_data_schema,
      &deps/1,
      "GraphQL data schema for FactorioHub"
    )
  end

  def deps(_) do
    [
      internal: [
        {:factorio_hub_core, path: "../core"}
      ],
      external: [
        {:absinthe}
      ]
    ]
  end
end
