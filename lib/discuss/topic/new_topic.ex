defmodule Discuss.CreateTopic do
  @moduledoc """
  Creating new topic
  """

  import Ecto.Changeset
  alias Discuss.{Topic, Repo}

  def run(params) do
    %Topic{}
    |> cast(params, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> Repo.insert()
  end
end
