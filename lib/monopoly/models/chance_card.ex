defmodule Monopoly.Models.ChanceCard do
  alias __MODULE__

  defstruct [
    :title,
    :text,
    :action
  ]

  def new() do
    %ChanceCard{}
  end
end
