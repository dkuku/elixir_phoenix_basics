# controller

```elixir
defmodule ElixirPhoenixBasicsWeb.SlideShowController do
  use ElixirPhoenixBasicsWeb, :controller

  alias ElixirPhoenixBasics.SlideShow

  def index(conn, _params) do
    render(conn, "index.html", slides: SlideShow.all_slides())
  end

  def show(conn, %{"id" => id}) do
    with {:ok, slide} <- SlideShow.get_slide_by_id(id) do
      render(conn, "show.html", slide: slide)
    else
      {:error, type} -> render(conn, "404.html", id: id)
    end
  end
end

```

