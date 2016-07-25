defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  def raise(_, 0), do: 1
  def raise(x, n) when n < 0, do: 1.0 / raise(x, -n)
  def raise(x, n), do: raise(x, n, 1)

  defp raise(_, 0, acc), do: acc
  defp raise(x, n, acc), do: raise(x, n - 1, acc * x)

  def nth_root(x, n), do: nth_root(x, n, x / 2.0)

  defp nth_root(x, n, a) do

    IO.puts("Current guess is #{a}")
    
    f = raise(a, n) - x
    f_prime = n * raise(a, n - 1)
    next = a - f / f_prime
    change = abs(a - next)
    
    cond do
      change < 1.0e-8 -> next 
      true -> nth_root(x, n, next)
    end
  end
end
