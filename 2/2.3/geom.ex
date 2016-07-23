defmodule Geom do
  @moduledoc """
    Function for calculating areas
  """

  @vsn 0.1

  @doc """
  Calculate the area of a rectangle. The
  default value for both arguments is 1
  """

  @spec area(number(), number()) :: number()

  def area(width \\ 1, length \\ 1) do
    width * length
  end
end
