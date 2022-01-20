defmodule Monopoly.Engine.DeedTransactions do
  alias Monopoly.Models.{Game, Deed, Player, Banker}

  def purchase_deed_from_bank(%Game{} = game, player_id, deed_id) do
    # Remove deed from bank
    # call purchase deed on the player
    # Create an invoice for the purchase
  end

  def sell_deed(%Game{} = game, seller_id, buyer_id, deed_id, price) do
    # Ensure property doesn't have houses or a hotel on it
    # Remove property from the seller
    # Call purchase deed on the buying player
    # Create an invoice for the purchase
  end

  def mortgage_deed(%Game{} = game, owner_id, deed_id) do
    # Ensure that the player owns the property being mortgaged
    # Ensure that it doesn't have houses on it
  end

  def build_house(%Game{} = game, player_id, deed_id) do
    # Ensure that the player owns the property, and the street and it is not mortgaged
    # Ensure the player has adequate funds
    # Update the deed model to reflect the house
  end

  def build_hotel(%Game{} = game, player_id, deed_id) do
  end

  def sell_house(%Game{} = game, player_id, deed_id) do
  end

  def sell_hotel(%Game{} = game, player_id, deed_id) do
  end

  def bankrupt_player(%Game{} = game, player_id, owed_player_id) do
    # Used to bankrupt a player and remove them from the game
    # owed_player_id can be either another player or the bank
    # Dissolves the players assets appropriately and eliminates them from the game
  end
end
