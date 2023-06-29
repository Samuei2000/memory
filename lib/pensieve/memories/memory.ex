defmodule Pensieve.Memories.Memory do
  use Ecto.Schema
  import Ecto.Changeset

  schema "memories" do
    field :title, :string
    field :content, :string

    timestamps()
  end

  @doc false
  def changeset(memory, attrs) do
    memory
    |> cast(attrs, [:title, :content])
    |> validate_required([:title])
    |> validate_length(:title, max: 100)
    |> validate_format(:content, ~r/^((?!voldemort).)*$/i)
  end
end
