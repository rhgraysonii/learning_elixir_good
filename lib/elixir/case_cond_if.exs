# Case allows us to match based on pattern

case { 2, 4, 5 } do
  { 4, 8, 10 } ->
    IO.puts "this never will print"
  { 2, x, 5 } ->
    IO.puts "this would bound x to 4"
  _ ->
    IO.puts "Wildcard, bitches"
end

# as you can see the matching system over typical assignment rocks

# to pattern match an existing var we use `^`

x = 1

case 10 do
  ^x -> IO.puts "aint gon' match"
  _  -> IO.puts "wildcard, again, bitches"
end

# we can also add guards

case { 2, 4, 6 } do
  { 2, x, 6 } when x > 0 ->
    "will match"
    
  _ ->
    "wont match"
end

case { 2, 4, 6 } do
  { 2, x, 6 } when x < 0 ->
    "wont match"
    
  _ ->
    "will match"
end

# more on guards
# we can use all our comparison operators, as seen above
# ( == != === !== > < >= <= )
# bool operators 
# and or not !
# arithmetic
# all type check functions
# and a few others that we can check docks for. its generally sensical.

# errors dont leak, they just make it fail

# hd 1
# This raises an argument error

case 1 do
  x when hd x -> "wont match"
  x -> "got #{x}"
end

# => "got 1"

# if no cases are matched we raise a case clause error

# if we are checking conditions over values, we use the `cond` clause
cond do
  2 + 2 == 5 ->
    "wont match"
  2 * 2 == 5 ->
    "wont match"
  1 + 1 == 2 ->
    "will match"
end

# we raise an error unless we reach true before the end

cond do
  "penis" == "more penis" ->
    "nope"
  2 == 4   ->
    "nope"
  5 == 3   ->
    "moar nope"
  true     ->
    "we'll hit this shit"
end

# all but nil and false is true

if nil do
  "nope"
else
  "yep"
end


unless nil do
  "yep"
else
  "nope"
end

# we can do blocks in single or multiline form

if true do
  a = 2
  a + 5
end
# => 7

# with one liners we need a comma
if true, do: 1 + 2
# +> 3

