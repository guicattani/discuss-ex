defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias Discuss.{Topic, Repo}

  def index(conn, _params) do
    topics = Repo.all(Topic)
    render(conn, "index.html", topics: topics)
  end

  def new(conn, _params) do
    render(conn, "new.html", changeset: Topic.changeset(%Topic{}, %{}))
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:ok, post} ->
        IO.inspect(post)

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
