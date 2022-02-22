defmodule ConsiderWeb.SectionLive.Index do
  use ConsiderWeb, :live_view

  alias Consider.Content

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :sections, list_sections())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Sections")
    |> assign(:product, nil)
  end

  defp list_sections do
    Content.list_sections()
  end
end
