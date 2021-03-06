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

  def charge_rent(dice_roll, utilities_owned_count) do
  end
end
