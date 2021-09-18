defmodule FenixMysql.Repo do
  use Ecto.Repo,
    otp_app: :fenix_mysql,
    adapter: Ecto.Adapters.MyXQL
end
