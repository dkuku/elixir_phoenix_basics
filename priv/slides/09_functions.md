# Functions

```elixir
defmodule Functions do
	def maybe_filter_by_user(query, nil) do
		query
	end
	
	def maybe_filter_by_user(query, user_id) when is_binary(user_id) do
		maybe_filter_by_user(query, String.to_integer(user_id))
	end
	
    def maybe_filter_by_user(query, user_id) do
		where(query [u], u.id==user_id)
	end
end
```

# Anonymus functions

```elixir
Enum.filter(list, fn entry -> entry != "123" end)

Enum.filter(list, & &1 != "123")
```

