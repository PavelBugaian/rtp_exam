defmodule PrinterActor do
  require Logger
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def print_message({:ok, message}, socket) do
    GenServer.cast(__MODULE__, {:print_message, {message, socket}})
  end

  @impl true
  def init(:ok) do
    {:ok, {}}
  end

  @impl true
  def handle_cast({:print_message, {message, socket}}, {}) do
    Server.write_line(socket, {:ok, message})

    {:noreply, {}}
  end
end
