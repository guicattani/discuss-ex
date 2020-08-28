defmodule Discuss.Repo.Migrations.AddTimestampsToTopics do
  use Ecto.Migration

  def change do
    alter table(:topics) do
      timestamps default: "2016-01-01 00:00:01", null: false
    end
  end
end
