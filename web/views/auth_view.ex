defmodule Gatekeeper.AuthView do
  use Gatekeeper.Web, :view

  def render("code.json", %{body: body}) do
    Poison.decode!(body)
  end
end
