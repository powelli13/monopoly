defmodule Monopoly.Models.ChestDeck do
  alias __MODULE__

  defstruct [
    :cards
  ]

  def new() do
    %ChestDeck{}
  end

  def draw_card(%ChestDeck{} = deck) do
    deck
  end
end
