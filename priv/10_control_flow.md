# case

```elixir
iex> case {1, 2, 3} do
...>   {4, 5, 6} ->
...>     "This clause won't match"
...>   {1, x, 3} ->
...>     "This clause will match and bind x to 2 in this clause"
...>   _ ->
...>     "This clause would match any value"
...> end
"This clause will match and bind x to 2 in this clause"
```

# cond

```elixir
iex> cond do
...>   2 + 2 == 5 ->
...>     "This will not be true"
...>   2 * 2 == 3 ->
...>     "Nor this"
...>   1 + 1 == 2 ->
...>     "But this will"
...> end
"But this will"
```

# if

```elixir
iex> if nil do
...>   "This won't be seen"
...> else
...>   "This will"
...> end
"This will"
```

# with

```elixir
    with dob <- parse_dob(params["dob"]),
         name <- parse_name(params["name"])
    do
      %User{dob: dob, name: name}
    else
      err -> err
    end
```

