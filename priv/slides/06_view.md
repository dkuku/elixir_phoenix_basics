# view

```elixir
defmodule ElixirPhoenixBasicsWeb.SlideShowView do
  use ElixirPhoenixBasicsWeb, :view
  def render("404.html", assigns) do
    "Slide with id #{assigns.id} not found"
  end

  def render("show.json", %{conn: conn}) do
    %{title: "example_conn", conn: inspect(conn, pretty: true, limit: :infinity)}
  end
end
```

