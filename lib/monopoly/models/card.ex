defmodule Monopoly.Models.Card do
  alias __MODULE__

  defstruct [
    :title,
    :text,
    :action
  ]

  def new() do
    %Card{}
  end
end