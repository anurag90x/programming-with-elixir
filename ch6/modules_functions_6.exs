defmodule BinarySearch do
  def guess(actual, a..b) when actual < b, do: _guess(actual, a..b, div(a+b,2))
  def guess(actual, a..b) when actual > b, do: :error
  def _guess(actual, a..b, currentGuess) when actual == currentGuess, do: currentGuess 
  def _guess(actual, a..b, currentGuess) when actual > currentGuess do
    IO.puts(currentGuess)
    _guess(actual, currentGuess..b, div(currentGuess+b,2))
  end
  def _guess(actual, a..b, currentGuess) when actual < currentGuess do
    IO.puts(currentGuess)
    _guess(actual, a..currentGuess, div(currentGuess+a,2))
  end
end
