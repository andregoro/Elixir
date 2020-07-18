defmodule Word.Repo do
  use Ecto.Repo,
    otp_app: :word,
    adapter: Ecto.Adapters.MyXQL
end
