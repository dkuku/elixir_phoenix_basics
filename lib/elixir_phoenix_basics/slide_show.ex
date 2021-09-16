defmodule ElixirPhoenixBasics.SlideShow do
  alias ElixirPhoenixBasics.SlideShow.Slide
  alias ElixirPhoenixBasics.SlideParser

  use NimblePublisher,
    build: Slide,
    from: Application.app_dir(:elixir_phoenix_basics, "priv/slides/**/*.md"),
    as: :slides,
    highlighters: [:makeup_elixir],
    parser: SlideParser

  @slides Enum.sort_by(@slides, & &1.id)
  def all_slides, do: @slides |> IO.inspect()
  def get_slide_by_id(id) do
    slide =
    all_slides()
    |> Enum.filter(& &1.id == id)

    case slide do
      [] -> {:error, :not_found}
      [slide | _] -> {:ok, slide}
    end
  end
end
