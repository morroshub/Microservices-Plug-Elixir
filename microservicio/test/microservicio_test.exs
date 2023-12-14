defmodule MicroservicioTest do
  use ExUnit.Case
  doctest Microservicio

  test "greets the world" do
    assert Microservicio.hello() == :world
  end
end
