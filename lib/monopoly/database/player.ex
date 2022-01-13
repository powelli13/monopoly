defmodule Monopoly.Database.Player do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: true}
  schema "player" do
    field :board_index, :integer
    field :piece_token, :string
    field :is_bankrupt, :boolean
    field :balance, :integer
  end
end