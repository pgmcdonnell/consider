defmodule Consider.ContentFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Consider.Content` context.
  """

  @doc """
  Generate a section.
  """
  def section_fixture(attrs \\ %{}) do
    {:ok, section} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> Consider.Content.create_section()

    section
  end

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        body: "some body",
        is_published: true,
        synopsis: "some synopsis",
        title: "some title"
      })
      |> Consider.Content.create_article()

    article
  end
end
