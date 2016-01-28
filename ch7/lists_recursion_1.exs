defmodule ListMethods do 
  def map([], func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)] 
  def reduce([head | tail], func), do: _reduce(tail, func, head)
  def _reduce([], func, value), do: value
  def _reduce([head | tail], func, value), do: _reduce(tail, func, func.(head,value))
  def mapsum(list, func), do: map(list, func) |> reduce(&(&1+&2))
  def max(list), do: reduce(list, &(max(&1, &2))) 
  def span(from, from), do: [from]
  def span(from, to),do: [from | span(from+1,to)]
  def all?([head | tail], func), do: _all?(tail, func, func.(head))
  def _all?([], func, value), do: value
  def _all?([head | tail], func, value), do: _all?(tail, func, value and func.(head))
  def each(list, func), do: _each(list, func)
  def _each([], func), do: :nothing
  def _each([head | tail], func) do
    func.(head)
    _each(tail, func)
  end
  def filter([], func), do: []
  def filter([head | tail], func) do
    if func.(head) == true do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end
  def take([], n), do: []
  def take([head | tail], n) when n<=0, do: []
  def take([head | tail], n) when n>0, do: [head | take(tail, n-1)]
  def flatten([]), do: []
  def flatten([head | tail]) do
    if !is_list(head) do
      [head | flatten(tail)]
    else
      flatten(head) ++ flatten(tail)
    end
  end
end
