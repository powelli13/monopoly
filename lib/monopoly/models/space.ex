defmodule Monopoly.Models.Space do
  @moduledoc """
  Used to define a space on the board, any associated property
  or special event occurrence.
  """
  alias __MODULE__

  defstruct [
    :index,
    :default_deed
  ]

  def new(index) do
    %Space{index: index}
  end
end