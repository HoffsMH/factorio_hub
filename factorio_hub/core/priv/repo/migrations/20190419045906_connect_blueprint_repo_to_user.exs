defmodule FactorioHub.Repo.Migrations.ConnectBlueprintRepoToUser do
  use Ecto.Migration

  def up do
    alter table(:blueprint_repository) do
      add :owner_id, references(:user, type: :binary_id), null: false
    end
  end

  def down do
    alter table(:blueprint_repository) do
      remove :owner_id
    end
  end
end
