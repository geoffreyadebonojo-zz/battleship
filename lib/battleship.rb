require 'pry'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'




board_1 = Board.new
board_2 = Board.new
player_1 = Player.new(board_1)
player_2 = Player.new(board_2)
game = Game.new(player_1, player_2)

binding.pry
