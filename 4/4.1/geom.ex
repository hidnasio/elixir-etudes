defmodule Geom do
  def area(shape, a, b) do
    case {shape, a, b} do
       {:rectangle, width, length} when width > 0 and length > 0 ->
         width * length
       {:triangle, length, height} when length > 0 and height > 0 ->
         (length * height) / 2.0
       {:ellipse, a, b} when a > 0 and b > 0 ->
         :math.pi * a * b
    end
  end

  def alt_area(shape, a, b) when a > 0 and b > 0 do
    case shape do
      :rectangle -> a * b
      :triangle -> (a * b) / 2.0
      :ellipse -> :math.pi * a * b
    end
  end
end
