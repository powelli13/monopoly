defmodule Monopoly.Engine.Movement do
  alias Monopoly.Models.{Game, Player}

  def advance_by_dice_roll(%Game{} = game) do
    # Ensure the player isn't in jail
    # Check for collecting money after passing Go
    # Update the position
    # Record movement to Event History
    # Create actionable item for player to purchase new property if available
      # If not owned, then create option for owner to charge rent
  end

  defp roll_two_dice() do
    dice1 = :rand.uniform(6)
    dice2 = :rand.uniform(6)
    spaces_to_move = dice1 + dice2

    if is_doubles?(dice1, dice2) do
      {:doubles, spaces_to_move}
    else
      {:no_doubles, spaces_to_move}
    end
  end

  defp is_doubles?(dice1, dice2), do:
    dice1 == dice2
end