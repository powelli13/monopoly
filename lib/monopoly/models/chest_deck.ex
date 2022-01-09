defmodule Monopoly.Models.ChestDeck do
  alias __MODULE__

  defstruct [
    :cards
  ]

  def new() do
    %ChestDeck{}
  end
end