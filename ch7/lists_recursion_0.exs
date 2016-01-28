defmodule ListSum do
  def sum(l), do: _sum(l)
  def _sum([]), do: 0
  def _sum([head | tail]), do: head + _sum(tail)
end
