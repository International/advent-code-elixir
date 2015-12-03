defmodule WrappingPaper do
  def needed(l, w, h) do
    sides = [(l * w), (w * h), (h * l)]
    2*l*w + 2*w*h + 2*h*l + Enum.min(sides)
  end

  def needed(%{l: lvalue, w: wvalue, h: hvalue}) do
    needed(lvalue, wvalue, hvalue)
  end
end
