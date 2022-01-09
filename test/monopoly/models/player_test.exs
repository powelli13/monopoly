defmodule Monopoly.Models.PlayerTest do
  use ExUnit.Case, async: true

  alias Monopoly.Models.Player

  test "new should start player with 1500 balance" do
    player = Player.new("abc")

    assert player.balance == 1500
  end
end
