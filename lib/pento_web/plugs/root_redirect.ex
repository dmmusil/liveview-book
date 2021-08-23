defmodule PentoWeb.Plugs.RootRedirect do
  alias PentoWeb.Router.Helpers, as: Routes

  def init(default) do
    default
  end

  def call(conn, _opts) do
    path = Routes.user_session_path(conn, :new)
    conn |> Phoenix.Controller.redirect(to: path) |> Plug.Conn.halt()
  end
end
