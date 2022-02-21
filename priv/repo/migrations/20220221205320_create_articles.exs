defmodule Consider.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :synopsis, :string
      add :body, :text
      add :is_published, :boolean, default: false, null: false
      add :section, references(:sections, on_delete: :nothing)

      timestamps()
    end

    create index(:articles, [:section])
  end
end
