defmodule BlogAppWeb.PageController do
  use BlogAppWeb, :controller

  alias BlogApp.Blog
  alias BlogApp.Blog.Post

  def index(conn, _params) do
    posts = Blog.list_posts()
    render(conn, "index.html", posts: posts)
  end
end
