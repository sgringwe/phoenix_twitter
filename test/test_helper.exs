ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixTwitter.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixTwitter.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixTwitter.Repo)

