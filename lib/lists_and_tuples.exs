some_list = [1, 2, 3, true, false, 'cats', 2.0]
IO.puts(length(some_list)) # 3

# it appears the Elixir convention is to not parenthesize single arg functions
# Concat is a slightly different, but understandable syntax
# You can subtract too

thing = [1,2] ++ [3, 4, 5]
result = thing -- [1, 2, 3] # we get a compiler warning because we do not use this,
# [4, 5]                    # however I have left it here to demonstrate syntax as its valid


# IO.puts result
# IO.puts some_list ++ another_list

# this is commented because it errors. I dont understand completely why yet
# so im making a note though.

# we can get heads and tails with some std lib functions

arr = ['cat', 'dog']
head = hd arr 
tail = tl arr 

IO.puts head
IO.puts tail

# heads and tails, makes sense.

# String types are different when single or double quoted, much like Ruby

answer = 'hell' == "hell"

IO.puts answer # false

# tuples are curly braces

my_tuple = {1, 2, 3}

# we have a tuple size function rather than length

IO.puts(tuple_size(my_tuple)) # 3

# to add to a tuple we use a function, not an operator like ++/--
put_elem(my_tuple, 1, "mutated") # {1, "mutated", 3}

# lists are a true implementation of a linked list
# due to this, prepending to them is trivial, but if we were to append
# the entirety of it must be traversed.
# However, tuples are stored contiguously. Access is fast, but addition
# is expensive due to the cost of replicating the entire tuple in memory

