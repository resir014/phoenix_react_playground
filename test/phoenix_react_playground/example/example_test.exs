defmodule PhoenixReactPlayground.ExampleTest do
  use PhoenixReactPlayground.DataCase

  alias PhoenixReactPlayground.Example

  describe "languages" do
    alias PhoenixReactPlayground.Example.Language

    @valid_attrs %{name: "some name", proverb: "some proverb"}
    @update_attrs %{name: "some updated name", proverb: "some updated proverb"}
    @invalid_attrs %{name: nil, proverb: nil}

    def language_fixture(attrs \\ %{}) do
      {:ok, language} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Example.create_language()

      language
    end

    test "list_languages/0 returns all languages" do
      language = language_fixture()
      assert Example.list_languages() == [language]
    end

    test "get_language!/1 returns the language with given id" do
      language = language_fixture()
      assert Example.get_language!(language.id) == language
    end

    test "create_language/1 with valid data creates a language" do
      assert {:ok, %Language{} = language} = Example.create_language(@valid_attrs)
      assert language.name == "some name"
      assert language.proverb == "some proverb"
    end

    test "create_language/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Example.create_language(@invalid_attrs)
    end

    test "update_language/2 with valid data updates the language" do
      language = language_fixture()
      assert {:ok, %Language{} = language} = Example.update_language(language, @update_attrs)
      assert language.name == "some updated name"
      assert language.proverb == "some updated proverb"
    end

    test "update_language/2 with invalid data returns error changeset" do
      language = language_fixture()
      assert {:error, %Ecto.Changeset{}} = Example.update_language(language, @invalid_attrs)
      assert language == Example.get_language!(language.id)
    end

    test "delete_language/1 deletes the language" do
      language = language_fixture()
      assert {:ok, %Language{}} = Example.delete_language(language)
      assert_raise Ecto.NoResultsError, fn -> Example.get_language!(language.id) end
    end

    test "change_language/1 returns a language changeset" do
      language = language_fixture()
      assert %Ecto.Changeset{} = Example.change_language(language)
    end
  end
end
