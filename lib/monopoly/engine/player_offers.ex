defmodule Monopoly.Engine.PlayerOffers do
  alias Monopoly.Models.{Game, Player, Deed, Offer}

  def create_offer(%Game{} = game, creator_id, recipient_id, deed_id, price, type) do
  end

  def accept_offer(%Game{} = game, offer_id) do
  end

  def reject_offer(%Game{} = game, offer_id) do
  end
end