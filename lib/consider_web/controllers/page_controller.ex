defmodule ConsiderWeb.PageController do
  use ConsiderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
