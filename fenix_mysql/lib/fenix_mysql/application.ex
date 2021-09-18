defmodule FenixMysql.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      FenixMysql.Repo,
      # Start the Telemetry supervisor
      FenixMysqlWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: FenixMysql.PubSub},
      # Start the Endpoint (http/https)
      FenixMysqlWeb.Endpoint
      # Start a worker by calling: FenixMysql.Worker.start_link(arg)
      # {FenixMysql.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FenixMysql.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    FenixMysqlWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
