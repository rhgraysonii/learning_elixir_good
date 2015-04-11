# Variable assignment, and other pieces that look like a typical assignment
# operator in Elixir have a much deeper meaning.

x = 1

IO.puts x

# However, rather than being simple assignment, `=` is actually the `match`
# operator

1 = x # 1

# 1000 = x
# this raises an exception
# It is a matcherror, no right hand value

# variables can only be assigned on the left side of the `match` operator

# We also have simple pattern matching

{ a, b, c } = { 1, 2, 3 } # Jackson five reference

# => { 1, 2, 3 }

IO.puts a
IO.puts b
IO.puts c

# as you can see, the reference does not only fall within the tuple itself, but
# rather to the individual matches through the pattern established

# things get much more interesting, however.

{ :bill, result} = { :bill, "nye the science guy" }

# in this case, nothing beyond `:bill` matters, and we can pass arbitrary values
# however the match to `:bill` must be exact. We throw an exception if we try this:

# { :bill, result } = { :poop, "nye the science guy" } #because poop is funny

# we raise an exception

# we cant match empty lists using the head and tail pattern from earlier:

# [h|t] = []
# raises MatchError

# variables can be rebound

x = 'cat'
IO.puts x # cat
x = 'dog'
IO.puts x # dog

# we can set arbitrary values we dont care about and just get one match like so
[ h | _ ] = [1, 2, 3]
IO.puts h
# as we can see, we assign h and leave the rest.

# _ # this can never be read from and will throw an exception
