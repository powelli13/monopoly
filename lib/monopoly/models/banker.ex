defmodule Monopoly.Models.Banker do
  alias __MODULE__

  defstruct [
    house_count: 25,
    hotel_count: 10
  ]

  def new() do
    %Banker{}
  end
end