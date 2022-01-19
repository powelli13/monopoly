defmodule Monopoly.Models.MovementTurn do
  alias __MODULE__

  defstruct [
    :player_id,
    :started_in_jail,
    doubles_count: 0
  ]

  def new() do
    %MovementTurn{}
  end

  def increment_doubles_count(%MovementTurn{} = turn) do
    new_count = turn.doubles_count + 1

    if new_count >= 3 do
      :go_to_jail
    else
      :end_turn
    end
  end
end
