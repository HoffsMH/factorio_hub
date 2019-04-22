defmodule FactorioHubTest do
  use ExUnit.Case
  doctest FactorioHub

  test "greets the world" do
    assert FactorioHub.hello() == :world
  end
end
