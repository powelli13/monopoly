defmodule MonopolyWeb.PageController do
  use MonopolyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
