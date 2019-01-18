defmodule PhoenixReactPlayground.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_react_playground,
    adapter: Ecto.Adapters.Postgres
end
