defmodule Monopoly.Database.DeedInfo do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:uuid, :binary_id, autogenerate: true}
  schema "deed_info" do
    field :name, :string
    field :street_name, :string
    field :purchase_price, :integer
    field :standard_rent, :integer
    field :full_set_rent, :integer
    field :one_house_rent, :integer
    field :two_house_rent, :integer
    field :three_house_rent, :integer
    field :hotel_rent, :integer
    field :mortgage_price, :integer
  end
end