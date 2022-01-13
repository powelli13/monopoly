defmodule Monopoly.Repo.Migrations.CreatePlayerAndDeedTables do
  use Ecto.Migration

  def change do
    create table("player") do
      add :board_index, :integer
      add :piece_token, :string
      add :is_bankrupt, :boolean
      add :balance, :integer

      timestamps()
    end

    create table("deed_info") do
      add :name, :string
      add :street_name, :string
      add :purchase_price, :integer
      add :standard_rent, :integer
      add :full_set_rent, :integer
      add :one_house_rent, :integer
      add :two_house_rent, :integer
      add :three_house_rent, :integer
      add :hotel_rent, :integer
      add :mortgage_price, :integer

      timestamps()
    end

    create table("deed_ownership") do
      add :mortgaged, :boolean
      add :number_houses, :integer
      add :has_hotel, :boolean
      add :player, references("player")
      add :deed_info, references("deed_info")

      timestamps()
    end
  end
end
