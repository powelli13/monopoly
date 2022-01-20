defmodule Monopoly.Models.Auction do
  alias __MODULE__

  defstruct [
    player_bids: %{}
  ]

  def new() do
    %Auction{}
  end
end