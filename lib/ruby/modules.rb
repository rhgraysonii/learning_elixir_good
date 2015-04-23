module Stuff
  def self.things
    50
  end

  def self.eat 
    "food"
  end

  def self.puke
    "puke up food"
  end
end

puts Stuff.things
# => 50
puts Stuff.eat
# => "food"
puts Stuff.puke
# => "puke up food"

