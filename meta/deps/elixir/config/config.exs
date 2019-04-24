use Mix.Config

config :factorio_hub_core,
  ecto_repos: [FactorioHub.Core.Repo]

import_config "#{Mix.env()}.exs"
