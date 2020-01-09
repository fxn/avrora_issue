defmodule AvroraIssueWeb.AvroraChannelTest do
  use AvroraIssueWeb.ChannelCase

  setup do
    {:ok, socket} = connect(AvroraIssueWeb.UserSocket, %{})
    {:ok, _response, socket} = subscribe_and_join(socket, "avrora")

    {:ok, socket: socket}
  end

  test "first test", %{socket: socket} do
    ref = push(socket, "encode", nil)
    assert_reply ref, :ok
  end

  test "second test", %{socket: socket} do
    ref = push(socket, "encode", nil)
    assert_reply ref, :ok
  end
end
