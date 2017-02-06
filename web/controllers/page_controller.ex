defmodule GqlSample.PageController do
  use GqlSample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
