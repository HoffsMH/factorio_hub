use Mix.Config

# Configure your database
config :factorio_hub, FactorioHub.Repo,
  database: "factorio_hub_repo_test",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
