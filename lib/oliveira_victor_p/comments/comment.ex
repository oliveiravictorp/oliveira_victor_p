defmodule OliveiraVictorP.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :markup_text, :string
    belongs_to :user, OliveiraVictorP.Accounts.User
    belongs_to :gist, OliveiraVictorP.Gists.Gist

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:markup_text, :user_id, :gist_id])
    |> validate_required([:markup_text, :user_id, :gist_id])
  end
end
