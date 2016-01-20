defmodule Gatekeeper.AuthController do
  use Gatekeeper.Web, :controller

  def code(conn, params) do
    client_id = System.get_env("CLIENT_ID")
    client_secret = System.get_env("CLIENT_SECRET")
    url = "https://github.com/login/oauth/access_token?client_id=#{client_id}&client_secret=#{client_secret}&code=#{params["code"]}"
    {:ok, res } = HTTPoison.post(url, "", %{"Accept" => "application/json"}, [])

    render conn, body: res.body
  end
end
