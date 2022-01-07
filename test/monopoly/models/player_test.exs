defmodule Monopoly.Models.PlayerTest do
  use ExUnit.Case, async: true

  alias Monopoly.Models.Player

  test "new should start player with 500 balance" do
    player = Player.new()

    assert player.balance == 500
  end
end
