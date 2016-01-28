f1 = fn 
  {0, 0, _} -> "FizzBuzz"
  {0, _, _} -> "Fizz"
  {_, 0, _} -> "Buzz"
end
IO.puts f1(0,0,1)
IO.puts f1(0,1,1)
