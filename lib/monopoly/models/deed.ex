defmodule Monopoly.Models.Deed do
  @moduledoc """
  Defines a relationship of a player owning a certain property.
  """
  alias __MODULE__

  defstruct [
    :owner_id,
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

  def new(name, description, purchase_price) do
    %Property{name: name, description: description, price: purchase_price, owner_id: "bank"}
  end
end