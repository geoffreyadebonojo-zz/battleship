require 'pry'
require './lib/player'
require './lib/computer_player'
require './lib/game'
require './lib/space'
require './lib/ship'
require './lib/board'

all_spaces = [
  space_A1 = Space.new("A1"),
  space_A2 = Space.new("A2"),
  space_A3 = Space.new("A3"),
  space_A4 = Space.new("A4"),

  space_B1 = Space.new("B1"),
  space_B2 = Space.new("B2"),
  space_B3 = Space.new("B3"),
  space_B4 = Space.new("B4"),

  space_C1 = Space.new("C1"),
  space_C2 = Space.new("C2"),
  space_C3 = Space.new("C3"),
  space_C4 = Space.new("C4"),
  
  space_D1 = Space.new("D1"),
  space_D2 = Space.new("D2"),
  space_D3 = Space.new("D3"),
  space_D4 = Space.new("D4")]

human_board = Board.new(all_spaces)
computer_board = Board.new(all_spaces)
human = Player.new(human_board)
computer = ComputerPlayer.new(computer_board)
game = Game.new(human, computer) 

puts ""
puts "Welcome to BATTLESHIP"
puts ""
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"

reply = gets.chomp.to_s.downcase
if reply == "p"
  p "Show ship layout"
  game.player_1_ship_layout
  game.player_2_ship_layout
  p "Ready for war"
  p "setting field..."
  game.board.load_spaces
  game.board.display_board

  game.player_1.place_ship

  # game.board.all_spaces_array

  # game.player_1.ships.first.place_on(Space.new(placement))

  binding.pry
elsif reply == "i"
  p "Show instructions"
  
elsif reply == "q"
end




