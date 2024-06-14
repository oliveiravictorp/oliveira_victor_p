defmodule OliveiraVictorP.Gists.Gist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gists" do
    field :name, :string
    field :description, :string
    field :markup_text, :string
    belongs_to :user, OliveiraVictorP.Accounts.User
    has_many :comments, OliveiraVictorP.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(gist, attrs) do
    gist
    |> cast(attrs, [:name, :description, :markup_text, :user_id])
    |> validate_required([:name, :user_id])
  end
end
