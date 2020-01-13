defmodule AvroraIssueWeb.PageController do
  use AvroraIssueWeb, :controller

  def index(conn, _params) do
    {:ok, _} = Avrora.encode(%{"login" => "fxn"}, schema_name: "com.example.User") |> IO.inspect()
    json(conn, %{})
  end
end
