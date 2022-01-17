defmodule Monopoly.Models.ChanceDeck do
  alias __MODULE__
  # TODO maybe make a behaviour for card, and a beahviour for decks

  defstruct [
    :cards
  ]

  def new() do
    %ChanceDeck{}
  end

  def draw_card(%ChanceDeck{} = deck) do
    deck
  end
end
