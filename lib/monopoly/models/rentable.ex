defprotocol Monopoly.Models.Rentable do
  @doc """
  Allows for a struct representing certain
  squares to charge rent to a player and
  give that money to another player.
  """
  def charge_rent(owner, renter, property)
end
