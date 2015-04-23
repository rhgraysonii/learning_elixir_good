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

