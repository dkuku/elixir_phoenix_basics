defmodule ElixirPhoenixBasics.Repo do
  use Ecto.Repo,
    otp_app: :elixir_phoenix_basics,
    adapter: Ecto.Adapters.Postgres
end
