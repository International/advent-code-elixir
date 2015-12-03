defmodule Santa do
  def printer(?(, [h|t]) do
    1 + printer(h, t)
  end

  def printer(?(, []) do
    1
  end

  def printer(?), []) do
    -1
  end

  def printer(?), [h|t]) do
    printer(h, t) - 1
  end

  def printer(_, []) do
    0
  end

  def printer([h | t]) do
    printer(h, t)
  end

end

IO.puts Santa.printer('((')
