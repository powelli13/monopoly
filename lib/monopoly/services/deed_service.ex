defmodule Monopoly.Services.DeedService do
  @moduledoc """
  Loads and saves deeds from the database. Distinguishes
  between deed info and deed ownership tables in the database.
  """
  alias Monopoly.Models.Deed

  def load_deeds(game_id) do
  end

  def save_deed(game_id, %Deed{} = deed) do
  end
end
