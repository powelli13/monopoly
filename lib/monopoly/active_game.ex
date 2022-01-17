defmodule Monopoly.ActiveGame do
  @moduledoc """
  Saves the state for an active Monopoly game.
  Manages reception of input player actions and
  updates state appropriately.
  """
  use GenServer

  alias Monopoly.Models.{Game, Player}

  @impl GenServer
  def init(game_id) do
    {:ok, Game.new(game_id)}
  end

  # Handle cast and calls would be here and could be called by other BEAM processes
end
