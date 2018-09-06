require 'pry'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'



board_1 = Board.new
board_2 = Board.new
player_1 = Player.new(board_1)
player_2 = Computer.new(board_2)
game = Game.new(player_1, player_2)



def boards_setup(game)
  game.player_2.board_setup
  game.player_1.board_setup
end

def display_target_field(game)
  puts "PLAYER 1 BOARD:"
  
  a0 = game.player_2.hash[:A0].status
  a1 = game.player_2.hash[:A1].status
  a2 = game.player_2.hash[:A2].status
  a3 = game.player_2.hash[:A3].status

  b0 = game.player_2.hash[:B0].status
  b1 = game.player_2.hash[:B1].status
  b2 = game.player_2.hash[:B2].status
  b3 = game.player_2.hash[:B3].status

  c0 = game.player_2.hash[:C0].status
  c1 = game.player_2.hash[:C1].status
  c2 = game.player_2.hash[:C2].status
  c3 = game.player_2.hash[:C3].status

  d0 = game.player_2.hash[:D0].status
  d1 = game.player_2.hash[:D1].status
  d2 = game.player_2.hash[:D2].status
  d3 = game.player_2.hash[:D3].status
  
  puts ". A B C D"
  puts ".........."
  puts "#{a1}#{a2}#{a3}#{a4}"
  puts "#{b1}#{b2}#{b3}#{b4}"
  puts "#{b1}#{b2}#{b3}#{b4}"
  puts "#{b1}#{b2}#{b3}#{b4}"
  puts ".........."

end

boards_setup(game)
display_target_field(game)

binding.pry

