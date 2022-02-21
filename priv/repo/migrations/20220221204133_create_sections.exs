defmodule Consider.Repo.Migrations.CreateSections do
  use Ecto.Migration

  def change do
    create table(:sections) do
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
