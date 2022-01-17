defmodule Monopoly.Models.Railroad do
  @moduledoc """
  Used to represent a railroad card that can be owned by players in the game.
  """
  alias __MODULE__

  defstruct [
    :owner_id
  ]

  def new() do
    %Railroad{owner_id: "bank"}
  end
end
