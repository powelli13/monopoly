defmodule Monopoly.Models.Property do
  alias __MODULE__

  defstruct [
    :name,
    :description,
    :price,
    fees = %{},
    upgrade_costs = %{},
    foreclosure_values = %{}
  ]

  def new(name, description, purchase_price) do
    %Property{name: name, description: description, price: purchase_price}
  end
end