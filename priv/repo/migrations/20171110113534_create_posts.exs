defmodule BlogApp.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :summary, :text
      add :public, :boolean, default: false, null: false

      timestamps()
    end

  end
end
