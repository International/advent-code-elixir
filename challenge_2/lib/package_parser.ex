defmodule PackageParser do
  def parse(input) do
    String.split(input) |> Enum.map(fn(element) ->
      elements = String.split(element, "x")
      %{
        l: Enum.at(elements,0) |> String.to_integer ,
        w: Enum.at(elements,1) |> String.to_integer ,
        h: Enum.at(elements,2) |> String.to_integer ,
      }
    end)
  end
end