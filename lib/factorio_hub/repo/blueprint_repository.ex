defmodule FactorioHub.Repo.BlueprintRepository do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "blueprint_repository" do
    timestamps()
  end
end
