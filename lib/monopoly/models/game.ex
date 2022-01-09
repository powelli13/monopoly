defmodule Monopoly.Models.Game do
  @moduledoc """
  Used to represent the total internal structure of a game
  of Monopoly. Acts as the coordinator between various structs
  and constituent pieces of the game.
  """
  alias __MODULE__

  defstruct [
    :game_id,
    :banker,
    :board,
    :events,
    :chance_deck,
    :chest_deck,
    :deeds,
    players: %{}
  ]

  def new(game_id) do
    %Game{game_id: game_id}
  end
end