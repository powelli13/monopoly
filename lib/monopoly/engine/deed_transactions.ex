defmodule Monopoly.Engine.DeedTransactions do
  alias Monopoly.Models.{Game, Deed, Player, Banker}

  def purchase_deed(%Game{} = game, player_id, deed_id) do
  end

  def sell_deed(%Game{} = game, seller_id, buyer_id, deed_id, price) do
  end

  def mortgage_deed(%Game{} = game, owner_id, deed_id) do
  end

  def build_house(%Game{} = game, player_id, deed_id) do
  end

  def build_hotel(%Game{} = game, player_id, deed_id) do
  end
end