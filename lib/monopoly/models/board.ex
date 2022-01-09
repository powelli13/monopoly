defmodule Monopoly.Models.Board do
  alias __MODULE__

  defstruct [
    spaces: %{}
  ]

  def new() do
    initialize_standard_board()
  end

  defp initialize_standard_board() do
    %Board{}
  end
end