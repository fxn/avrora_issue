defmodule AvroraIssueWeb.AvroraChannel do
  use Phoenix.Channel

  def join("avrora", _message, socket) do
    {:ok, socket}
  end

  def handle_in("encode", _params, socket) do
    {:ok, _} = Avrora.encode(%{"login" => "fxn"}, schema_name: "com.example.User") |> IO.inspect()
    {:reply, :ok, socket}
  end
end
