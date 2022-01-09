defmodule Monopoly.Models.Action do
  @moduledoc """
  Defines an action that a player may choose to act out.
  For example offering to purchase another player's property,
  selling houses on a property to the bank etc.
  """
  alias __MODULE__

  defstruct [
    :creator_id,
    :target_id,
    :verb
  ]

  def new(player_id) do
    %Action{creator_id: player_id}
  end
end