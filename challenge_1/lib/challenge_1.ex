defmodule Santa do
  defp modify_sum(new_value, position) do
    if new_value == -1 do
      IO.puts "negative at position: #{position}"
    end
    new_value
  end

  defp floor_number(acc, position, ?(, [h|t]) do
    floor_number(modify_sum(acc + 1, position), position + 1, h, t)
  end

  defp floor_number(acc, position, ?(, []) do
    modify_sum(acc + 1, position)
  end

  defp floor_number(acc, position, ?), []) do
    modify_sum(acc - 1, position)
  end

  defp floor_number(acc, position, ?), [h|t]) do
    floor_number(modify_sum(acc - 1, position), position + 1, h, t)
  end

  defp floor_number(acc, position, _, []) do
    modify_sum(acc, position)
  end

  def floor_number([h | t]) do
    floor_number(0, 1, h, t)
  end

  def basement_position([h | t]) do
    floor_number([h|t])
  end

end