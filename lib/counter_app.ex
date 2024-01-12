defmodule CounterApp.Counter do
  use GenServer

  # Client API

  def start_link(initial_value) do
    IO.puts("---Debug:  CounterApp: Starting the link using GenServer")
    result = GenServer.start_link(__MODULE__, initial_value, name: __MODULE__)
    IO.puts("---Debug:  CounterApp: Genserver started. Result was" <> inspect(result))
    result
  end

  def increment do
    GenServer.call(__MODULE__, :increment)
  end

  def decrement do
    GenServer.call(__MODULE__, :decrement)
  end

  def value do
    GenServer.call(__MODULE__, :value)
  end

  def reset do
    GenServer.call(__MODULE__, :reset)
  end

  # Server Callbacks

  def init(initial_value) do
    {:ok, initial_value}
  end

  def handle_call(:increment, _from, state) do
    {:reply, :ok, state + 1}
  end

  def handle_call(:decrement, _from, state) do
    {:reply, :ok, state - 1}
  end

  def handle_call(:value, _from, state) do
    {:reply, state, state}
  end

  def handle_call(:reset, _from, state) do
    {:reply, :ok, 0}
  end
end
