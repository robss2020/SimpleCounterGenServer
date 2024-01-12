defmodule CounterApp.Application do
  use Application

  def start(_type, _args) do
    children = [
      {CounterApp.Counter, 0}
    ]

    opts = [strategy: :one_for_one, name: CounterApp.Supervisor]
    IO.puts("--- Debug. Supervisor: starting the link.")
    result = Supervisor.start_link(children, opts)
    IO.puts("--- Debug. Supervisor: Link started. The result was: " <> inspect(result))
    result
  end
end
