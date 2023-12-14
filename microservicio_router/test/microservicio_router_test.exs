defmodule MicroservicioRouterTest do
  use ExUnit.Case
  doctest MicroservicioRouter

  test "greets the world" do
    assert MicroservicioRouter.hello() == :world
  end
end
