defmodule Fenix.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :nome, :string
      add :email, :string
      add :decricao, :string

      timestamps()
    end

  end
end
