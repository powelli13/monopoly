defmodule Monopoly.Models.Property do
  alias __MODULE__

  defstruct [
    :name,
    :description,
    :price,
    :mortgage_value,
    :unmortgage_price,
    :house_cost,
    :hotel_cost,
    fees: %{},
    upgrade_costs: %{},
  ]

  def new(name, description, purchase_price) do
    %Property{name: name, description: description, price: purchase_price}
  end
end