defmodule ElixirPhoenixBasicsWeb.PageController do
  use ElixirPhoenixBasicsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
