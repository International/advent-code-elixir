defmodule Challenge_1Test do
  use ExUnit.Case
  doctest Santa

  test "(()) and ()() both result in floor 0" do
    assert Santa.floor_number('(())') == 0
    assert Santa.floor_number('()()') == 0
  end

  test "((( and (()(()( both result in floor 3" do
    assert Santa.floor_number('(((') == 3
    assert Santa.floor_number('(()(()(') == 3
  end

  test "()) and ))( both result in floor -1 (the first basement level)." do
    assert Santa.floor_number('())') == -1
    assert Santa.floor_number('))(') == -1
  end

  test "))) and )())()) both result in floor -3." do
    assert Santa.floor_number(')))') == -3
    assert Santa.floor_number(')())())') == -3
  end

  test "))((((( also results in floor 3." do
    assert Santa.floor_number('))(((((') == 3
  end

end
