defmodule PhoenixTwitter.Tweet do
  use PhoenixTwitter.Web, :model

  schema "tweets" do
    field :content, :string
    field :name, :string

    timestamps
  end

  @required_fields ~w(content name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:content, min: 4, max: 240)
    |> validate_length(:name, min: 2)
  end
end
