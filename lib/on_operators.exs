# String concat is different, in syntax, but simple

IO.puts "Hello " <> "World"
# "Hello World

# weve also got the typical operators

IO.puts true and true           # true
IO.puts false or is_integer(2)  # false

# 1 and true
# providing a non bool throws an exception. Ok, cool

# `or` and `and` only execute the right side
# unless they have to go to the left to eval
# I have a feeling this will tie into the powerful pattern
# matching system I've heard so much about

# We also get || && and !

IO.puts !true      # false

IO.puts true && 17 # 17

# These guys aren't as picky.

# We've got all the typical operators for comparison...

IO.puts 7 < 8      # true
IO.puts 7 <= 7     # true
IO.puts 7 > 1      # true
IO.puts 7 >= 1     # true
IO.puts 7 == 7     # true
IO.puts 7 === 7    # true
IO.puts 7 !== 1    # true

# we can compare disparate types

1 < :my_soul # true

# this is pragmatic and has regards to sorting algos
# there is a master sort order

# number < atom < reference < functions < port < pid < tuple < maps < list < bitstring

