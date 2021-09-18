defmodule Fenix.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :decricao, :string
    field :email, :string
    field :nome, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:nome, :email, :decricao])
    |> validate_required([:nome, :email, :decricao])
  end
end
