defmodule Monopoly.Models.ChestCard do
  @moduledoc """
  Holds the information about a given card
  that players may draw from the chest deck
  during the game.
  """
  alias __MODULE__

  defstruct [
    :title,
    :text,
    :action
  ]

  def new() do
    %ChestCard{}
  end
end