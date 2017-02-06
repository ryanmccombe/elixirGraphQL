# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gql_sample,
  ecto_repos: [GqlSample.Repo]

# Configures the endpoint
config :gql_sample, GqlSample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FciCqPNWHttQrcBrajYlIgz6+lhJJduBMrCUA+qlWQQooiYrjmKnvbTVSw9h7rn8",
  render_errors: [view: GqlSample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GqlSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
