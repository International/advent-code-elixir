defmodule Santa do
  defp floor_number(acc, ?(, [h|t]) do
    floor_number(acc + 1, h, t)
  end

  defp floor_number(acc, ?(, []) do
    acc + 1
  end

  defp floor_number(acc, ?), []) do
    acc - 1
  end

  defp floor_number(acc, ?), [h|t]) do
    floor_number(acc - 1, h, t)
  end

  defp floor_number(acc, _, []) do
    acc
  end

  def floor_number([h | t]) do
    floor_number(0, h, t)
  end

  def basement_position([h | t]) do

  end

end