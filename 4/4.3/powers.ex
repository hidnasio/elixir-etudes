defmodule Powers do
  import Kernel, except: [raise: 2]

  def raise(base, power) when power == 0, do: 1 
  def raise(base, power) when power == 1, do: base
  def raise(base, power) when base > 0 and power > 0, do: base * raise(base, power - 1)
  def raise(base, power) when power < 0, do: 1.0 / raise(base, -power)

  def raise_alt(_, 0), do: 1
  def raise_alt(x, 1), do: x
  def raise_alt(x, n) when n > 0, do: x * raise(x, n - 1)
  def raise_alt(x, n) when n < 0, do: 1.0 / raise(x, -n)
end
