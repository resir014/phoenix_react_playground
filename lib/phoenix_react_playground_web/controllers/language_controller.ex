defmodule PhoenixReactPlaygroundWeb.LanguageController do
  use PhoenixReactPlaygroundWeb, :controller

  alias PhoenixReactPlayground.Examples
  alias PhoenixReactPlayground.Examples.Language

  action_fallback PhoenixReactPlaygroundWeb.FallbackController

  def index(conn, _params) do
    languages = Examples.list_languages()
    render(conn, "index.json", languages: languages)
  end

  def create(conn, %{"language" => language_params}) do
    with {:ok, %Language{} = language} <- Examples.create_language(language_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", language_path(conn, :show, language))
      |> render("show.json", language: language)
    end
  end

  def show(conn, %{"id" => id}) do
    language = Examples.get_language!(id)
    render(conn, "show.json", language: language)
  end

  def update(conn, %{"id" => id, "language" => language_params}) do
    language = Examples.get_language!(id)

    with {:ok, %Language{} = language} <- Examples.update_language(language, language_params) do
      render(conn, "show.json", language: language)
    end
  end

  def delete(conn, %{"id" => id}) do
    language = Examples.get_language!(id)
    with {:ok, %Language{}} <- Examples.delete_language(language) do
      send_resp(conn, :no_content, "")
    end
  end
end
