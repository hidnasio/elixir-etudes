defmodule Geom do
  def area(:rectangle, width, length) when width >= 0 and length >= 0 do
    width * length
  end

  def area(:triangle, width, height) when width >= 0 and height >= 0 do
    (width * height) / 2.0
  end

  def area(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi * a * b
  end

  def area(_, _, _), do: 0
end
