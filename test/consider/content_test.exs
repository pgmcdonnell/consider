defmodule Consider.ContentTest do
  use Consider.DataCase

  alias Consider.Content

  describe "sections" do
    alias Consider.Content.Section

    import Consider.ContentFixtures

    @invalid_attrs %{description: nil, name: nil}

    test "list_sections/0 returns all sections" do
      section = section_fixture()
      assert Content.list_sections() == [section]
    end

    test "get_section!/1 returns the section with given id" do
      section = section_fixture()
      assert Content.get_section!(section.id) == section
    end

    test "create_section/1 with valid data creates a section" do
      valid_attrs = %{description: "some description", name: "some name"}

      assert {:ok, %Section{} = section} = Content.create_section(valid_attrs)
      assert section.description == "some description"
      assert section.name == "some name"
    end

    test "create_section/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_section(@invalid_attrs)
    end

    test "update_section/2 with valid data updates the section" do
      section = section_fixture()
      update_attrs = %{description: "some updated description", name: "some updated name"}

      assert {:ok, %Section{} = section} = Content.update_section(section, update_attrs)
      assert section.description == "some updated description"
      assert section.name == "some updated name"
    end

    test "update_section/2 with invalid data returns error changeset" do
      section = section_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_section(section, @invalid_attrs)
      assert section == Content.get_section!(section.id)
    end

    test "delete_section/1 deletes the section" do
      section = section_fixture()
      assert {:ok, %Section{}} = Content.delete_section(section)
      assert_raise Ecto.NoResultsError, fn -> Content.get_section!(section.id) end
    end

    test "change_section/1 returns a section changeset" do
      section = section_fixture()
      assert %Ecto.Changeset{} = Content.change_section(section)
    end
  end

  describe "articles" do
    alias Consider.Content.Article

    import Consider.ContentFixtures

    @invalid_attrs %{body: nil, is_published: nil, synopsis: nil, title: nil}

    test "list_articles/0 returns all articles" do
      article = article_fixture()
      assert Content.list_articles() == [article]
    end

    test "get_article!/1 returns the article with given id" do
      article = article_fixture()
      assert Content.get_article!(article.id) == article
    end

    test "create_article/1 with valid data creates a article" do
      valid_attrs = %{body: "some body", is_published: true, synopsis: "some synopsis", title: "some title"}

      assert {:ok, %Article{} = article} = Content.create_article(valid_attrs)
      assert article.body == "some body"
      assert article.is_published == true
      assert article.synopsis == "some synopsis"
      assert article.title == "some title"
    end

    test "create_article/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_article(@invalid_attrs)
    end

    test "update_article/2 with valid data updates the article" do
      article = article_fixture()
      update_attrs = %{body: "some updated body", is_published: false, synopsis: "some updated synopsis", title: "some updated title"}

      assert {:ok, %Article{} = article} = Content.update_article(article, update_attrs)
      assert article.body == "some updated body"
      assert article.is_published == false
      assert article.synopsis == "some updated synopsis"
      assert article.title == "some updated title"
    end

    test "update_article/2 with invalid data returns error changeset" do
      article = article_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_article(article, @invalid_attrs)
      assert article == Content.get_article!(article.id)
    end

    test "delete_article/1 deletes the article" do
      article = article_fixture()
      assert {:ok, %Article{}} = Content.delete_article(article)
      assert_raise Ecto.NoResultsError, fn -> Content.get_article!(article.id) end
    end

    test "change_article/1 returns a article changeset" do
      article = article_fixture()
      assert %Ecto.Changeset{} = Content.change_article(article)
    end
  end
end
