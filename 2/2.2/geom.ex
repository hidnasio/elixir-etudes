defmodule Geom do
  def area(), do: 1

  def area(width), do: width

  def area(width, length), do: width * length
  
  def alt_area(width \\ 1, length \\ 1), do: width * length
end
