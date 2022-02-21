defmodule Consider.Content.Article do
  use Ecto.Schema
  import Ecto.Changeset

  schema "articles" do
    field :body, :string
    field :is_published, :boolean, default: false
    field :synopsis, :string
    field :title, :string
    field :section, :id

    timestamps()
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :synopsis, :body, :is_published])
    |> validate_required([:title, :synopsis, :body, :is_published])
  end
end
