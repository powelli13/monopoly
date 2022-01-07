defmodule Monopoly.Models.Player do
  alias __MODULE__

  defstruct [
    :player_id,
    balance: 500
  ]

  def new() do
    %Player{}
  end
end