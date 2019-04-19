defmodule FactorioHub.MixProject do
  use Mix.Project

  def project do
    [
      app: :factorio_hub,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {FactorioHub.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, ">= 0.0.0"},
      {:postgrex, ">= 0.0.0"},
      {:ecto_sql, ">= 0.0.0"},
      {:faker, ">= 0.0.0", only: [:test, :dev]}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
