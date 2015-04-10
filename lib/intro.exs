a = 1
b = 1.0
c = 0x1
d = true

IO.puts a ==  b # true
IO.puts a === b # false
IO.puts a ==  c # true
IO.puts a === c # true
IO.puts a ==  d # false
IO.puts a === d # false

# It appears we have a JavaScript esque, except actually useful
# triple equals that can work with types. Hex seems to be treated
# as int and not IEEE 754 double precision floating point, which
# is sensical I think.

quotient = a / a # 1.0

IO.puts quotient

# It seems division automatically yields a float

string = "this"
atom = :this

IO.puts string
IO.puts atom

IO.puts string == atom

# print the same but disparate types, expected

# Anonymos functions seem to be simple and behave as expected
diff = fn a, b -> a - b end

IO.puts diff.(3, 2)

# The dot notation had me get a few compiler errors before I had
# realized my mistake

