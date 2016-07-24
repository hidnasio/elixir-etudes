defmodule Geom do
  @moduledoc """
  Function for calculating areas of geometric shapes
  """

  @vsn 0.1

  @doc """
  Calculates the areas of a shape
  """

  @spec area(atom(), number(), number()) :: number()

  def area(:rectangle, length, width) do
    length * width
  end

  def area(:triangle, base, height) do
    (base * height) / 2
  end

  def area(:ellipse, major_radius, minor_radius) do
    :math.pi() * major_radius * minor_radius
  end
end
