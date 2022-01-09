defmodule Monopoly.Models.Player do
  @moduledoc """
  Model used to hold information about a player's piece,
  bank balance and owned properties.
  """
  alias __MODULE__

  defstruct [
    :player_id,
    :board_index,
    balance: 500
  ]

  def new() do
    %Player{}
  end
end