defmodule Monopoly.Models.Game do
  @moduledoc """
  Used to represent the total internal structure of a game
  of Monopoly. Acts as the coordinator between various structs
  and constituent pieces of the game.
  """
  alias __MODULE__

  # Need to save player turn order
  # Which players turn it is
  defstruct [
    :game_id,
    :banker,
    :board,
    :events,
    :chance_deck,
    :chest_deck,
    :deeds,
    :streets,
    :railroads,
    :utilities,
    :current_auction,
    :active_movement_turn,
    :active,
    :movement_turns,
    :current_turn_player_id,
    :players_turn_order,
    players: %{}
  ]

  def new(game_id) do
    %Game{game_id: game_id}
  end
end
