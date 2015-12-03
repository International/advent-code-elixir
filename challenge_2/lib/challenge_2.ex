defmodule WrappingPaper do
  def needed(l, w, h) do
    2*l*w + 2*w*h + 2*h*l + w * l
  end

  def needed(%{l: lvalue, w: wvalue, h: hvalue}) do
    needed(lvalue, wvalue, hvalue)
  end
end
