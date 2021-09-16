defmodule ElixirPhoenixBasics.SlideShow.Slide do
  @enforce_keys [:title, :body, :id]
  defstruct [:title, :body, :id]

  def build(filename, attrs, body) do
    IO.inspect(filename)
    IO.inspect(body)
    IO.inspect(attrs)
    [id, title] =
      filename 
      |> Path.rootname() 
      |> Path.split() 
      |> Enum.take(-1) 
      |> hd()
      |> String.split("_", parts: 2)
    struct!(__MODULE__, [id: id, title: String.replace(title, "_", " "), body: body] ++ Map.to_list(attrs))
  end
end
