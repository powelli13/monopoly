defmodule Monopoly.Models.Deed do
  @moduledoc """
  Defines a relationship of a player owning a certain property.
  """
  alias __MODULE__

  defstruct [
    :owner_id,
    :deed_id,
    :upgrades,
    :name,
    :street,
    :price,
    :mortgage_value,
    :unmortgage_price,
    :house_cost,
    :hotel_cost,
    fees: %{},
    upgrade_costs: %{}
  ]

  def new(name, street, purchase_price) do
    %Deed{name: name, street: street, price: purchase_price, owner_id: "bank"}
  end

  def change_owner(%Deed{} = deed, player_id) do
  end

  def build_house(%Deed{} = deed) do
  end

  def build_hotel(%Deed{} = deed) do
  end

  def mortgage_deed(%Deed{} = deed) do
  end

  def unmortgage_deed(%Deed{} = deed) do
  end
end

defimpl Monopoly.Models.Rentable, for: Monopoly.Models.Deed do
  def charge_rent(owner, renter, property) do
    # Determine the fee level for the property
    # create an amount owed invoice from renter to owner
    property
  end
end
