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

