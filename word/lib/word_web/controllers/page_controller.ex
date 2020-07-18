defmodule WordWeb.PageController do
  use WordWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
