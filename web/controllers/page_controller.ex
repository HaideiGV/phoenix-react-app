defmodule Phoenixreactapp.PageController do
  use Phoenixreactapp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
