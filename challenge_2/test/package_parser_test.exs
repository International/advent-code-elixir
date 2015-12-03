defmodule PackageParserTest do
  use ExUnit.Case
  doctest PackageParser

  test "challenge input" do
    input="""
20x3x11
15x27x5
    """
    assert PackageParser.parse(input) == [
      %{l: 20, w: 3, h: 11},
      %{l: 15, w: 27, h: 5},
    ]
  end
end
