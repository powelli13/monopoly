defmodule Monopoly.Models.Railroad do
  @moduledoc """
  Used to represent a railroad card that can be owned by players in the game.
  """
  alias __MODULE__

  defstruct [
    :owner_id,
    :name,
    fees: %{}
  ]

  def new(name) do
    %Railroad{owner_id: "bank", name: name}
  end
end

defimpl Monopoly.Models.Rentable, for: Monopoly.Models.Railroad do
  def charge_rent(owner, renter, property) do
    # Determine the fee level based on number of railroads owned by owner
    # create an amount owed invoice from renter to owner
    property
  end
end
