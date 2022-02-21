# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Consider.Repo.insert!(%Consider.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Consider.Accounts.User
alias Consider.Accounts

%{email: "pgm15@hotmail.com", password: "changemeR!ghtAway"}
|> Consider.Accounts.register_user()
