use Mix.Config

config :factorio_hub, FactorioHub.Repo,
  database: "factorio_hub_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
