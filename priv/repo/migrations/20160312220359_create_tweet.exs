defmodule PhoenixTwitter.Repo.Migrations.CreateTweet do
  use Ecto.Migration

  def change do
    create table(:tweets) do
      add :content, :text
      add :name, :string

      timestamps
    end

  end
end
