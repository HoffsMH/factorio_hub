defmodule FactorioHub.Core.Repo.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "user" do
    field(:name, :string)

    timestamps()
  end
end
