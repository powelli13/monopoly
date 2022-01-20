defmodule Monopoly.Repo.Migrations.AddBankerTable do
  use Ecto.Migration

  def change do
    create table("banker") do
      add :game_id, references("game")
      add :house_count, :integer
      add :hotels_count, :integer

      timestamps()
    end
  end
end
