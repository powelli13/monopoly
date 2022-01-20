defmodule Monopoly.Models.Player do
  @moduledoc """
  Model used to hold information about a player's piece,
  bank balance and owned properties.
  """
  alias __MODULE__
  alias Monopoly.Models.Deed

  defstruct [
    :player_id,
    :board_index,
    :piece_token,
    state: :moving,
    turns_in_jail: 0,
    is_bankrupt: false,
    balance: 1500,
    cards: [],
    deeds: %{},
    railroads: %{}
  ]

  def new(player_id) do
    %Player{player_id: player_id}
  end

  def purchase_deed(%Player{} = player, %Deed{} = deed) do
    # Ensure player balance does not go below zero
    # Add deed to the map
  end

  def sell_deed(%Player{} = player, deed_id, price) do
    # Ensure that the player had the deed to begin with
    # Remove deed from the map
    # Add price to the balance
  end

  def can_afford_cost?(%Player{} = player, cost) do
  end
end
