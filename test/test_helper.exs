ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SbbNotifier.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SbbNotifier.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SbbNotifier.Repo)

