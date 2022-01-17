defmodule Monopoly.Models.Invoice do
  @moduledoc """
  """
  alias __MODULE__

  defstruct [
    :invoice_id,
    :payee_player_id,
    :payer_player_id,
    :type,
    :amount,
    :deed_id
  ]

  def new() do
    %Invoice{}
  end
end
