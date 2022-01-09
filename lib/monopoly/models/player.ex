defmodule Monopoly.Models.Player do
  @moduledoc """
  Model used to hold information about a player's piece,
  bank balance and owned properties.
  """
  alias __MODULE__

  defstruct [
    :player_id,
    :board_index,
    :piece_token,
    is_bankrupt: false,
    balance: 1500,
    deeds: %{}
  ]

  def new(player_id) do
    %Player{player_id: player_id}
  end
end