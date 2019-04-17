defmodule FactorioHub.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      FactorioHub.Repo,
    ]

    opts = [strategy: :one_for_one, name: FactorioHub.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
