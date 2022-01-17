defmodule Monopoly.Services.GameRecorder do
  @moduledoc """
  Persists the game state to memory elsewhere, possible to a database
  or other way of storing the state long term.
  """
  alias Monopoly.Models.Game

  def save_game(%Game{} = game) do
  end
end
