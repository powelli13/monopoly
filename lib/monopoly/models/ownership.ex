defmodule Monopoly.Models.Ownership do
  @moduledoc """
  Defines a relationship of a player owning a certain property.
  """
  alias __MODULE__

  defstruct [
    :player_id,
    :property_id,
    :upgrades
  ]

  def new(player_id) do
    %Ownership{player_id: player_id}
  end
end