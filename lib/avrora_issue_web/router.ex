defmodule AvroraIssueWeb.Router do
  use AvroraIssueWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AvroraIssueWeb do
    pipe_through :api
  end
end
