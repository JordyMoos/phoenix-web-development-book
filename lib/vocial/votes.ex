defmodule Vocial.Votes do
  import Ecto.Query

  alias Vocial.Repo
  alias Vocial.Votes.Poll
  alias Vocial.Votes.Option

  def list_polls do
    Repo.all(Poll)
      |> Repo.preload(:options)
  end

  def new_poll do
    Poll.changeset(%Poll{}, %{})
  end
end