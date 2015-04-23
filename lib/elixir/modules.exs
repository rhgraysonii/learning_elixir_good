defmodule Stuff do
  def things do
    50
  end

  def eat, do: "food"
  def puke, do: "puke up food"
end

Stuff.things
# => 50
Stuff.eat
# => "food"
Stuff.puke
# => "puke up food"

# this is the most trivial example of an elixir module
# as you can see it is quite like Ruby's standard module
# syntax

