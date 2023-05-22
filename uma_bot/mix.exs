defmodule UmaBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :uma_bot,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {UmaBot.Application, []}
    ]
  end

  defp deps do
    [
      {:ex_gram, "~> 0.34.0"},
      {:tesla, "~> 1.2"},
      {:hackney, "~> 1.12"},
      {:jason, ">= 1.0.0"},
      {:floki, "~> 0.33.0"},
      {:finch, "~> 0.8"},
      {:poison, "~> 5.0"}
    ]
  end
end
