defmodule Monopoly.Models.Turn do
  alias __MODULE__

  defstruct [
    :player_id,
    :starting_space_index,
    :ending_space_index,
    :event
  ]

  def new(player_id) do
  end
end