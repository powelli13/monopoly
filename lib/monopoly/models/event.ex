defmodule Monopoly.Models.Event do
  @moduledoc """
  Keeps track of events that occur within the game.
  These events can be used to show a history of the game and
  what has occurred. It can be used to allow for a viewable history
  of the game as it plays out.
  """
  alias __MODULE__

  defstruct [
    :type,
    :message,
    invoice_id: nil,
  ]

  def new() do
    %Event{}
  end
end