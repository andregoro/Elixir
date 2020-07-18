defmodule Word.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Word.Repo,
      # Start the Telemetry supervisor
      WordWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Word.PubSub},
      # Start the Endpoint (http/https)
      WordWeb.Endpoint
      # Start a worker by calling: Word.Worker.start_link(arg)
      # {Word.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Word.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    WordWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
