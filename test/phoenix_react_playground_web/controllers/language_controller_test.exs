defmodule PhoenixReactPlaygroundWeb.LanguageControllerTest do
  use PhoenixReactPlaygroundWeb.ConnCase

  alias PhoenixReactPlayground.Example
  alias PhoenixReactPlayground.Example.Language

  @create_attrs %{
    name: "some name",
    proverb: "some proverb"
  }
  @update_attrs %{
    name: "some updated name",
    proverb: "some updated proverb"
  }
  @invalid_attrs %{name: nil, proverb: nil}

  def fixture(:language) do
    {:ok, language} = Example.create_language(@create_attrs)
    language
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all languages", %{conn: conn} do
      conn = get(conn, Routes.language_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create language" do
    test "renders language when data is valid", %{conn: conn} do
      conn = post(conn, Routes.language_path(conn, :create), language: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.language_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some name",
               "proverb" => "some proverb"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.language_path(conn, :create), language: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update language" do
    setup [:create_language]

    test "renders language when data is valid", %{conn: conn, language: %Language{id: id} = language} do
      conn = put(conn, Routes.language_path(conn, :update, language), language: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.language_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some updated name",
               "proverb" => "some updated proverb"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, language: language} do
      conn = put(conn, Routes.language_path(conn, :update, language), language: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete language" do
    setup [:create_language]

    test "deletes chosen language", %{conn: conn, language: language} do
      conn = delete(conn, Routes.language_path(conn, :delete, language))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.language_path(conn, :show, language))
      end
    end
  end

  defp create_language(_) do
    language = fixture(:language)
    {:ok, language: language}
  end
end
