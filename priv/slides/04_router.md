# router

```elixir
defmodule ElixirPhoenixBasicsWeb.Router do
  use ElixirPhoenixBasicsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {ElixirPhoenixBasicsWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirPhoenixBasicsWeb do
    pipe_through :browser

    get "/", PageController, :index

  get "/slideshow", SlideShowController, :index
  get "/slideshow/:id", SlideShowController, :show
  # resource is full crud
  resource "/some/path", ResourceController, except: [:show]
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: ElixirPhoenixBasicsWeb.Telemetry
    end
  end

end

```

