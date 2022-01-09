defmodule Monopoly.Models.Invoice do
  @moduledoc """
  """
  alias __MODULE__

  defstruct [
    :payee_player_id,
    :payer_player_id,
    :amount
  ]

  def new() do
    %Invoice{}
  end
end