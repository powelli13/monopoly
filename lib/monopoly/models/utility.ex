defmodule Monopoly.Models.Utility do
  alias __MODULE__

  defstruct [
    :owner_id,
    :name,
    fees: %{}
  ]

  def new(name) do
    %Utility{owner_id: "banker", name: name}
  end
end

defimpl Monopoly.Models.Rentable, for: Monopoly.Models.Utility do
  def charge_rent(owner, renter, property) do
    # Determine the fee amount
    # create an amount owed invoice from renter to owner
    property
  end
end
