defmodule FactorioHub.GraphQL.Schema do
  alias FactorioHub.Repo
  alias FactorioHub.Repo.{User}
  use Absinthe.Schema

  query do
    field :user, :user do
      arg(:id, :id)

      resolve(fn %{id: id}, _ ->
        {:ok, Repo.get(User, id)}
      end)
    end
  end

  object :user do
    field(:id, :id)
    field(:name, :string)
    field(:description, :string)
  end
end
