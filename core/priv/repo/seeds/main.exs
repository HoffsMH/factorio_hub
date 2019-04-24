# Create alot of users and attach blueprint repos to a portion of them

alias FactorioHub.Core.Repo
alias FactorioHub.Core.Repo.{User, BlueprintRepository}
alias Faker.{Name}
for _ <- 1..100 do
    Enum.map(1..300, fn _->
      Task.async(fn ->
        {:ok, user } = Repo.insert(%User{
            name: "#{Name.last_name}#{:rand.uniform(1000)}"
                                   })

        if :rand.uniform(3) > 2 do
          for _ <- 0..:rand.uniform(2) do
            Repo.insert(%BlueprintRepository{ owner: user })
          end
        end
      end)
    end)
    |> Enum.each(&Task.await(&1))
end
