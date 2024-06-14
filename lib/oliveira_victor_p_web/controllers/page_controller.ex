defmodule OliveiraVictorPWeb.PageController do
  use OliveiraVictorPWeb, :controller

  def home(conn, _params) do
    redirect(conn, to: "/home")
  end
end
