defmodule UmaBot.Scraper do
  def run do
    {:ok, %Finch.Response{body: body}} =
      Finch.build(:get, "https://www.reddit.com/r/ProgrammerHumor.json")
      |> Finch.request(MyFinch)

    # {:ok, document} = Floki.parse_document(body)

    Poison.decode!(body)
    |> Map.get("data")
    |> Map.get("children")
    |> Enum.map(& &1["data"])
    |> Enum.map(&Map.get(&1, "url_overridden_by_dest"))
  end
end
