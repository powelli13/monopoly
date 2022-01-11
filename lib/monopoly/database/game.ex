defmodule Monopoly.Database.Game do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary, autogenerate: true}
  schema "game" do
    field :active, :boolean
    field :active_movement_turn, :integer
end