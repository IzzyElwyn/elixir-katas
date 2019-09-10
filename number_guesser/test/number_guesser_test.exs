defmodule NumberGuesserTest do
  use ExUnit.Case
  doctest NumberGuesser

  test "greets the world" do
    assert NumberGuesser.hello() == :world
  end
end
