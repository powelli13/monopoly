defmodule Monopoly.Database.DeedOwnership do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: true}
  schema "deed_ownership" do
    field :mortgaged, :boolean
    field :number_houses, :integer
    field :has_hotel, :boolean
    belongs_to :player, Monopoly.Database.Player
    belongs_to :deed_info, Monopoly.Database.DeedInfo
  end
end