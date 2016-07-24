defmodule Geom do
  def area({shape, a, b}) do
    area(shape, a, b)
  end

  defp area(:rectangle, a, b) do
     a * b
  end

  defp area(:triangle, a, b) do
     (a * b) / 2.0
  end

  defp area(:ellipse, a, b) do
     :math.pi * a * b
  end

  defp area(_,_,_) do
    0
  end
end
