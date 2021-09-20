# Basic data types

```elixir
iex> 1          # integer
iex> 0x1F       # integer
iex> 1.0        # float
iex> true       # boolean
iex> :atom      # atom / symbol by default the limit is 1048576 
iex> "elixir"   # string
iex> [1, 2, 3]  # list
iex> {1, 2, 3}  # tuple

iex> %{key: "value"}       # map
iex> %{:key => "value"}    # map
iex> %{"key" => "value"}   # map

iex> %Struct{key: "value"}       # struct

iex> key: "value"                         # keyword list
iex> [key: "value"]                       # keyword list
iex> [{:key, "value"}, {:key2, "value"}]  # keyword list
```

