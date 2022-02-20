defmodule Consider.Repo do
  use Ecto.Repo,
    otp_app: :consider,
    adapter: Ecto.Adapters.Postgres
end
