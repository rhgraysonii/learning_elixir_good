# Anonymous functions are useful and fun

sum = 10

# this is not breaking immutability. Internally it looks
# at the original value and binds a new value. Anything
# that uses sum prior to this will reference the original

sum = 12

sum_val = fn -> IO.puts "sum was: #{sum}" end

sum = 100

sum_val.()
# call with .() for anon functions

# => sum was 12
# :ok

# the .() notation clears ambiguity between calling
# the function, and just being able to call thing.self
# over thing.self()

add = fn x, y -> x + y end

# last thing evalled is always returned. Elixir has no return
# keyword to utilize

subtract = fn x, y -> x - y end

perform_calculation = fn(a, b, func ->
  func.(a, b))
end

a = perform_calculation.(10, 10, add)
IO.puts a
# => 20
# as you can see, functions are high class citizens here

# shorthand functions are a thing
b = Enum.map [2, 4, 6], &(&1 *2)
c = Enum.map [2, 4, 6], fn i -> i * 2 end
res = b == c
IO.puts res
# we hass the ampersand to denote the area and arg to save space for one liners

IO.puts b

list = ["test", 1, "red", 4]
another_list = Enum.filter list, fn element -> element end
number_list = Enum.filter list, &is_number(&l)
# => [1, 4]

