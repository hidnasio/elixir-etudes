defmodule Dijkstra do
  def gcd(m, n) when m == n, do: m

  def gcd(m, n) when m > n, do: gcd(m - n, n)

  def gcd(m, n), do: gcd(m, n - m)

  def alt_gcd(m, n) do
    cond do
      m == n -> m
      m > n -> alt_gcd(m - n, n)
      true -> alt_gcd(m, n - m)
    end
  end
end
