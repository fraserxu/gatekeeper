use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :gatekeeper, Gatekeeper.Endpoint,
  secret_key_base: "M7O6Z3+XMVSmYGP262LOccygtBF69s/lLkg6/s7YM+pirNfQ+r5Nydp2nO3q34Rv"

# Configure your database
config :gatekeeper, Gatekeeper.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gatekeeper_prod",
  pool_size: 20
