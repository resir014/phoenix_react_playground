defmodule PhoenixReactPlayground.ExamplesTest do
  use PhoenixReactPlayground.DataCase

  alias PhoenixReactPlayground.Examples

  describe "languages" do
    alias PhoenixReactPlayground.Examples.Language

    @valid_attrs %{name: "some name", proverb: "some proverb"}
    @update_attrs %{name: "some updated name", proverb: "some updated proverb"}
    @invalid_attrs %{name: nil, proverb: nil}

    def language_fixture(attrs \\ %{}) do
      {:ok, language} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Examples.create_language()

      language
    end

    test "list_languages/0 returns all languages" do
      language = language_fixture()
      assert Examples.list_languages() == [language]
    end

    test "get_language!/1 returns the language with given id" do
      language = language_fixture()
      assert Examples.get_language!(language.id) == language
    end

    test "create_language/1 with valid data creates a language" do
      assert {:ok, %Language{} = language} = Examples.create_language(@valid_attrs)
      assert language.name == "some name"
      assert language.proverb == "some proverb"
    end

    test "create_language/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Examples.create_language(@invalid_attrs)
    end

    test "update_language/2 with valid data updates the language" do
      language = language_fixture()
      assert {:ok, language} = Examples.update_language(language, @update_attrs)
      assert %Language{} = language
      assert language.name == "some updated name"
      assert language.proverb == "some updated proverb"
    end

    test "update_language/2 with invalid data returns error changeset" do
      language = language_fixture()
      assert {:error, %Ecto.Changeset{}} = Examples.update_language(language, @invalid_attrs)
      assert language == Examples.get_language!(language.id)
    end

    test "delete_language/1 deletes the language" do
      language = language_fixture()
      assert {:ok, %Language{}} = Examples.delete_language(language)
      assert_raise Ecto.NoResultsError, fn -> Examples.get_language!(language.id) end
    end

    test "change_language/1 returns a language changeset" do
      language = language_fixture()
      assert %Ecto.Changeset{} = Examples.change_language(language)
    end
  end
end
