defmodule AvroraIssueWeb.PageControllerTest do
  use AvroraIssueWeb.ConnCase

  test "1", %{conn: conn} do
    get(conn, "/")
    assert true
  end

  test "2", %{conn: conn} do
    get(conn, "/")
    assert true
  end
end
