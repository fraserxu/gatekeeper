defmodule Gatekeeper.Router do
  use Gatekeeper.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json", "json-api"]
    # plug JaSerializer.ContentTypeNegotiation
    # plug JaSerializer.Deserializer
  end

  scope "/", Gatekeeper do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/authenticate", Gatekeeper do
    pipe_through :api

    # get "/", AuthController, :index
    get "/:code", AuthController, :code
  end
end
