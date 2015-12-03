defmodule WrappingPaper do
  def needed(l, w, h) do
    sides = [(l * w), (w * h), (h * l)]
    2*l*w + 2*w*h + 2*h*l + Enum.min(sides)
  end

  def needed(%{l: lvalue, w: wvalue, h: hvalue}) do
    needed(lvalue, wvalue, hvalue)
  end

  def ribbon(l, w, h) do
    Enum.min([2 * h + 2 * l, 2 * h + 2 * w, 2 * w + 2 * l])
  end

  def ribbon(%{l: lvalue, w: wvalue, h: hvalue}) do
    ribbon(lvalue, wvalue, hvalue)
  end

  def bow(l, w, h) do
    l * w * h
  end

  def bow(%{l: lvalue, w: wvalue, h: hvalue}) do
    bow(lvalue, wvalue, hvalue)
  end
end
