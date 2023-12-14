defmodule MicroservicioRouter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(scheme: :http, plug: MicroservicioRouter.Router),
      # Starts a worker by calling: MicroservicioRouter.Worker.start_link(arg)
      # {MicroservicioRouter.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MicroservicioRouter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
