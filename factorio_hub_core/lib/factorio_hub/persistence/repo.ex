defmodule FactorioHub.Core.Repo do
  use Ecto.Repo,
    otp_app: :factorio_hub_core,
    adapter: Ecto.Adapters.Postgres
end
