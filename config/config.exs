# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenixreactapp, Phoenixreactapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P4N1NLXxS/U64c6Fe2X11hBwQU/w+u0QPkcjNSztfWRu3MTh04Su+w7eMX8FDfP/",
  render_errors: [view: Phoenixreactapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixreactapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
