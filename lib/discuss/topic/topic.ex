defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    timestamps()
  end

  def changeset(topic, params \\ %{}) do
    topic
    |> cast(params, [:title])
    |> validate_required(:title)
  end
end
