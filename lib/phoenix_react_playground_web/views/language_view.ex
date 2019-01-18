defmodule PhoenixReactPlaygroundWeb.LanguageView do
  use PhoenixReactPlaygroundWeb, :view
  alias PhoenixReactPlaygroundWeb.LanguageView

  def render("index.json", %{languages: languages}) do
    %{data: render_many(languages, LanguageView, "language.json")}
  end

  def render("show.json", %{language: language}) do
    %{data: render_one(language, LanguageView, "language.json")}
  end

  def render("language.json", %{language: language}) do
    %{id: language.id,
      name: language.name,
      proverb: language.proverb}
  end
end
