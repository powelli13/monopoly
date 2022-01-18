defmodule Monopoly.Models.Street do
  @moduledoc """
  Used to define which properties are grouped together
  in a street.
  """
  alias __MODULE__

  defstruct [
    :name,
    deed_ids: []
  ]

  def new(name, deed_ids) do
    %Street{name: name, deed_ids: deed_ids}
  end
end