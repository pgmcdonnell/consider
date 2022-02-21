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
alias Consider.Accounts

alias Consider.Content

%{email: "pgm15@hotmail.com", password: "changemeR!ghtAway"}
|> Accounts.register_user()

%{name: "Fundamentals", description: "The foundational building blocks of Elixir."}
|> Content.create_section()

%{name: "Testing", description: "Elixir testing basics through to niche test scenarios."}
|> Content.create_section()

%{name: "Phoenix", description: "Leveraging the powerful Phoenix framework."}
|> Content.create_section()

%{name: "Packages", description: "Rundowns of useful Hex packages."}
|> Content.create_section()
