defmodule PhoenixReactPlayground.Examples.Language do
  use Ecto.Schema
  import Ecto.Changeset
  alias PhoenixReactPlayground.Examples.Language


  schema "languages" do
    field :name, :string
    field :proverb, :string

    timestamps()
  end

  @doc false
  def changeset(%Language{} = language, attrs) do
    language
    |> cast(attrs, [:name, :proverb])
    |> validate_required([:name, :proverb])
  end
end
