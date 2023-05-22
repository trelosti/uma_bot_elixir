defmodule UmaBotTest do
  use ExUnit.Case
  doctest UmaBot

  test "greets the world" do
    assert UmaBot.hello() == :world
  end
end
