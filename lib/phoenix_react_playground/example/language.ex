defmodule PhoenixReactPlayground.Example.Language do
  use Ecto.Schema
  import Ecto.Changeset


  schema "languages" do
    field :name, :string
    field :proverb, :string

    timestamps()
  end

  @doc false
  def changeset(language, attrs) do
    language
    |> cast(attrs, [:name, :proverb])
    |> validate_required([:name, :proverb])
  end
end
