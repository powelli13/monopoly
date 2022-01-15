defmodule Monopoly.Models.Turn do
  alias __MODULE__

  defstruct [
    :player_id,
    :starting_space_index,
    :ending_space_index,
    :doubles
  ]

  def new(player_id) do
    %Turn{player_id: player_id}
  end
end