defmodule OliveiraVictorPWeb.StudHall.GistLive do
  use OliveiraVictorPWeb, :live_view
  alias OliveiraVictorP.Gists

  def mount(%{"id" => id}, _session, socket) do
    gist = Gists.get_gist!(id)
    {:ok, assign(socket, gist: gist)}
  end
end
