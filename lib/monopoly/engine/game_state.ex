defmodule Monopoly.Engine.GameState do
  def initialize_turn_order(%Game{} = game) do
    # Used at the start of the game to assign the players
    # prompt each player to roll the dice and then set the turn order
  end

  def bankrupt_player(%Game{} = game, player_id, owed_player_id) do
    # Used to bankrupt a player and remove them from the game
    # owed_player_id can be either another player or the bank
    # Dissolves the players assets appropriately and eliminates them from the game
  end

  def has_winner?(%Game{} = game) do
    # Determines if the game has a winner after a player goes bankrupt
  end

  def announce_winner(%Game{} = game) do
  end
end