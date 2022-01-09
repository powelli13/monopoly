defmodule Monopoly.Services.MovementService do
  alias Monopoly.Models.{Game, Player}

  def advance_by_dice_roll() do
    # Ensure the player isn't in jail
    # Check for collecting money after passing Go
    # Update the position
    # Record movement to Event History
    # TODO How to execute action after landing on new space??
  end
end