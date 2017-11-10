# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_app,
  ecto_repos: [BlogApp.Repo]

# Configures the endpoint
config :blog_app, BlogAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ziBsDFs8ErqA/x02NSkuYHpOT+qNvFTMGOM83CnVzXLEQXaK94TTC9dTgmzQyb1t",
  render_errors: [view: BlogAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: BlogApp.Coherence.User,
  repo: BlogApp.Repo,
  module: BlogApp,
  web_module: BlogAppWeb,
  router: BlogAppWeb.Router,
  messages_backend: BlogAppWeb.Coherence.Messages,
  logged_out_url: "/",
  opts: [:authenticatable]
# %% End Coherence Configuration %%
