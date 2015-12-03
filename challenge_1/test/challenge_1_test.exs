defmodule Challenge_1Test do
  use ExUnit.Case
  doctest Santa

  test "(()) is 0" do
    assert Santa.floor_number('(())') == 0
  end
end
