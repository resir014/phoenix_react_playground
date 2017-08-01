defmodule PhoenixReactPlaygroundWeb.Router do
  use PhoenixReactPlaygroundWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixReactPlaygroundWeb do
    pipe_through :api

    resources "/languages", LanguageController, except: [:new, :edit]
  end

  scope "/", PhoenixReactPlaygroundWeb do
    pipe_through :browser # Use the default browser stack

    get "/*path", PageController, :index
  end
end
