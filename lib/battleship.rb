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

  a0 = game.player_2.board.hash[:A0].status
  a1 = game.player_2.board.hash[:A1].status
  a2 = game.player_2.board.hash[:A2].status
  a3 = game.player_2.board.hash[:A3].status

  b0 = game.player_2.board.hash[:B0].status
  b1 = game.player_2.board.hash[:B1].status
  b2 = game.player_2.board.hash[:B2].status
  b3 = game.player_2.board.hash[:B3].status

  c0 = game.player_2.board.hash[:C0].status
  c1 = game.player_2.board.hash[:C1].status
  c2 = game.player_2.board.hash[:C2].status
  c3 = game.player_2.board.hash[:C3].status

  d0 = game.player_2.board.hash[:D0].status
  d1 = game.player_2.board.hash[:D1].status
  d2 = game.player_2.board.hash[:D2].status
  d3 = game.player_2.board.hash[:D3].status
  
  puts ". A B C D"
  puts "  ......."
  puts "  #{a0} #{a1} #{a2} #{a3}"
  puts "  #{b0} #{b1} #{b2} #{b3}"
  puts "  #{c0} #{c1} #{c2} #{c3}"
  puts "  #{d0} #{d1} #{d2} #{d3}"
  puts "  ......."

end

boards_setup(game)
display_target_field(game)

binding.pry

