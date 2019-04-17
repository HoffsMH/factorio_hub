defmodule FactorioHub.Repo do
  use Ecto.Repo,
    otp_app: :factorio_hub,
    adapter: Ecto.Adapters.Postgres
end
