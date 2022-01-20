defmodule Monopoly.Database.Banker do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: true}
  schema "banker" do
    field :house_count, :integer
    field :hotels_count, :integer
    belongs_to :game, Monopoly.Database.Game
  end
end