some_list = [1, 2, 3, true, false, 'cats', 2.0]
puts some_list.length # 7

# In ruby, were calling an objects simple function rather
# than passing in something to a function for length, and
# many other core methods such as this.


thing = [1,2] + [3, 4, 5]
result = thing - [1, 2, 3] 

arr = ['cat', 'dog']
head = arr.first
tail = arr.last

# again, rather than having a function for we pass the structure
# into, we just have a method for it. This makes sense as Elixir is 
# functionally oriented

puts head
puts tail

answer = 'hell' == "hell"

puts answer

# The strings have different behaviour but still have
# equivalent values in Ruby, unlike Elixir

# Ruby has no tuple type

