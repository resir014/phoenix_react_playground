defmodule PhoenixReactPlaygroundWeb.PageController do
  use PhoenixReactPlaygroundWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
