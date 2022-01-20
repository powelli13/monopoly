defmodule Monopoly.Repo.Migrations.AddOfferTable do
  use Ecto.Migration

  def change do
    create table("offer") do
      add :amount, :integer
      add :type, :string
      add :game_id, references("game")
      add :creator_id, references("player")
      add :recipient_id, references("player")
      add :deed_ownership_id, references("deed_ownership")

      timestamps()
    end
  end
end
