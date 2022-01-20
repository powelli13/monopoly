defmodule Monopoly.Engine.Auction do
  alias Monopoly.Models.{Game, Player, Deed}

  def notify_players(%Game{} = game) do
  end

  def receive_bid(%Game{} = game, bidding_player_id, bid_amount) do
    # Ensure that the bid amount is higher than the previous bid
    # Ensure that the bidding player has sufficient funds
  end

  def announce_winner(%Game{} = game) do
  end
end
