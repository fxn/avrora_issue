defmodule AvroraIssueWeb.Router do
  use AvroraIssueWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AvroraIssueWeb do
    pipe_through :api

    get "/", PageController, :index
  end
end
