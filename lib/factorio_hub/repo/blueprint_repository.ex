defmodule FactorioHub.Repo.BlueprintRepository do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "blueprint_repository" do
    belongs_to(:owner, FactorioHub.Repo.User)

    timestamps()
  end
end
