defmodule ElixirPhoenixBasicsWeb.SlideShowView do
  use ElixirPhoenixBasicsWeb, :view
  def render("404.html", assigns) do
    "Slide with id #{assigns.id} not found"
  end
end
