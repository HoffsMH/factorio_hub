Code.require_file("#{System.get_env("PROJECT_ROOT")}/meta/deps/elixir/mix_common.exs")

defmodule ElixirDeps.MixProject do
  use Mix.Project
  alias Mix.Common

  @name :elixir_deps
  @deps [
    {:ecto, ">= 0.0.0"},
    {:postgrex, ">= 0.0.0"},
    {:ecto_sql, ">= 0.0.0"},
    {:faker, ">= 0.0.0", only: [:test, :dev]},
    {:absinthe, ">= 0.0.0"},
    {:ex_doc, ">= 0.0.0"}
  ]

  def project do
    [
      app: @name,
      version: Common.version(),
      elixir: "~> 1.8",
      deps: @deps
    ] ++ Common.project_paths()
  end
end
