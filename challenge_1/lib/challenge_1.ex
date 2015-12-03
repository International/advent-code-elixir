defmodule Santa do
  def floor_number(?(, [h|t]) do
    1 + floor_number(h, t)
  end

  def floor_number(?(, []) do
    1
  end

  def floor_number(?), []) do
    -1
  end

  def floor_number(?), [h|t]) do
    floor_number(h, t) - 1
  end

  def floor_number(_, []) do
    0
  end

  def floor_number([h | t]) do
    floor_number(h, t)
  end

end