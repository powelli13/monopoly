defmodule Monopoly.Repo.Migrations.CreateGameTable do
  use Ecto.Migration

  def change do
    create table("game") do
      add :active, :boolean
      add :active_movement_turn, :integer

      timestamps()
    end
  end
end
