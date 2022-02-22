defmodule ConsiderWeb.SectionLive.Show do
  use ConsiderWeb, :live_view

  alias Consider.Content

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _url, socket) do
    {:noreply, assign(socket, :section, Content.get_section!(id))}
  end
end
