defmodule UmaBot.Bot do
  @bot :uma_bot_fp

  use ExGram.Bot,
    name: @bot

  def bot(), do: @bot

  def handle({:command, "start", _msg}, context) do
    answer(context, "Hi!")
  end

  def handle({:command, "img", _msg}, context) do
    links = UmaBot.Scraper.run()

    case links do
      [] ->
        answer(context, "No image")

      _ ->
        random_link = Enum.random(links)
        answer(context, random_link)
    end
  end
end
