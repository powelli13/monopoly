defmodule Monopoly.Database.Offer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: true}
  schema "offer" do
    field :amount, :integer
    field :type, :string
    belongs_to :game, Monopoly.Database.Game
    belongs_to :creator, Monopoly.Database.Player
    belongs_to :recipient, Monopoly.Database.Player
    belongs_to :deed_ownership, Monopoly.Database.DeedOwnership
  end
end
