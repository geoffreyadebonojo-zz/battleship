require './lib/player'
require './lib/game'
require './lib/space'
require './lib/ship'
require './lib/board'


human = Player.new
computer = Player.new
game = Game.new(human, computer) 

puts ""
puts "Welcome to BATTLESHIP"
puts ""
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"

reply = gets.chomp.to_s.downcase
if reply == "p"
  p "Show ship layout"
  binding.pry
elsif reply == "i"
  p "Show instructions"
  binding.pry
elsif reply == "q"
end




