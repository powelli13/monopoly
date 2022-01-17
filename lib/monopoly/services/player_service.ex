defmodule Monopoly.Services.PlayerService do
  @moduledoc """
  Service used to load players for a given game,
  and save a specific players state to the database.
  """
  alias Monopoly.Models.Player

  def load_players(game_id) do
  end

  def save_player(game_id, %Player{} = player) do
  end
end