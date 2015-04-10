a = 1
b = 1.0
c = 0x1
d = true

puts a ==  b # true
puts a === b # true
puts a ==  c # true
puts a === c # true
puts a ==  d # false
puts a === d # false

quotient = a / a # 1

# in Ruby we get a fixnum, no forced float unless
# it is implicitly cast from one of the args, or
# if we were to call .to_f for some reason

puts quotient

string = "this"
symbol = :this

puts string
puts symbol 

puts string == symbol # false

diff = Proc.new { |a, b| a - b }
# Anonymous functions behave nearly identically

puts diff.call(5, 3)
# but we must call .call, rather than Elixir's dot notatoin.
