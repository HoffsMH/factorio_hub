defmodule FactorioHub.Core.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      FactorioHub.Core.Repo
    ]

    opts = [strategy: :one_for_one, name: FactorioHub.Core.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
