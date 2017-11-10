defmodule BlogApp.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias BlogApp.Blog.Post


  schema "posts" do
    field :body, :string
    field :public, :boolean, default: false
    field :summary, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body, :summary, :public])
    |> validate_required([:title, :body, :summary, :public])
  end
end
