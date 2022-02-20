defmodule ConsiderWeb.PageControllerTest do
  use ConsiderWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Consider Elixir"
  end
end
