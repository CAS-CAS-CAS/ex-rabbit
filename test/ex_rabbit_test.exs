defmodule ExRabbitTest do
  use ExUnit.Case
  doctest ExRabbit

  test "greets the world" do
    assert ExRabbit.hello() == :world
  end
end
