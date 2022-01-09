defmodule Monopoly.Models.ChestCard do
  alias __MODULE__

  defstruct [
    :title,
    :text,
    :action
  ]

  def new() do
    %ChestCard{}
  end
end