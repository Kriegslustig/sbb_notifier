defmodule SbbNotifier.PageController do
  use SbbNotifier.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
