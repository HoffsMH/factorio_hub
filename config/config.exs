use Mix.Config

config :factorio_hub,
  ecto_repos: [FactorioHub.Repo]

import_config "#{Mix.env()}.exs"
