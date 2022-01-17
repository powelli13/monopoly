defmodule Monopoly.Models.Offer do
  @moduledoc """
  Represents an offer that one player makes to another.
  Offers can represent buying or selling deeds between
  players.
  Type can be used to distinguish between offering to
  buy from a player, sell to a player, or bid at an auction.
  """
  alias __MODULE__

  defstruct [
    :offer_id,
    :creator_id,
    :recipient_id,
    :deed_id,
    :amount,
    :type
  ]

  def new(creator_id, recipient_id, deed_id, amount, type) do
    %Offer{
      creator_id: creator_id,
      recipient_id: recipient_id,
      deed_id: deed_id,
      amount: amount,
      type: type
    }
  end
end
