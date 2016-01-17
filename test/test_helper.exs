ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Gatekeeper.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Gatekeeper.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Gatekeeper.Repo)

