defmodule Geom do
  @moduledoc """
  Functions to calculate area of shapes
  """

  @vsn 0.2

  @doc """
  Functions to calculate area of shapes
  """

  @spec area(atom(), number(), number()) :: number()

  def rectangle(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width
  end

  def area(:triangle, width, height) when width >= 0 and height >= 0 do
    (width * height) / 2.0
  end

  def area(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi * a * b
  end
end
