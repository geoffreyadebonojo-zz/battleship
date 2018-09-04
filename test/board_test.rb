require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/player'
require './lib/computer_player'
require './lib/game'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test
	def setup
		@all_spaces = [
		@space_A1 = Space.new("A1"),
		@space_A2 = Space.new("A2"),
		@space_A3 = Space.new("A3"),
		@space_A4 = Space.new("A4"),

		@space_B1 = Space.new("B1"),
		@space_B2 = Space.new("B2"),
		@space_B3 = Space.new("B3"),
		@space_B4 = Space.new("B4"),

		@space_C1 = Space.new("C1"),
		@space_C2 = Space.new("C2"),
		@space_C3 = Space.new("C3"),
		@space_C4 = Space.new("C4"),
		
		@space_D1 = Space.new("D1"),
		@space_D2 = Space.new("D2"),
		@space_D3 = Space.new("D3"),
		@space_D4 = Space.new("D4")]


		human_board = Board.new(@all_spaces)
		computer_board = Board.new(@all_spaces)

		@human = Player.new(human_board)
    computer = Player.new(computer_board)

    @game = Game.new(@human, computer)

	end
	
	def test_it_exists
		assert_instance_of Game, @game
	end

	def test_it_loads_spaces
		@human.board.load_spaces
		refute_nil @human.board
	end
	
	def test_it_can_set_spaces_as_occupied
		@human.board.load_spaces
		space = Space.new("C3")
		row_symbol = "row_#{space.coordinates[0]}".to_sym
		target_space = @human.board[row_symbol][space.coordinates[1].to_i - 1]

		@human.board.set_space_as_occupied(space)
		assert_equal true, target_space.occupied
	end

	def test_it_updates_hits
		@human.board.load_spaces
		space = Space.new("C3")
		@human.board.set_space_as_occupied(space)
		@human.board.check_for_hits(space)

		assert_equal "H", @human.board[:row_C][2].status
	end

	def test_it_updates_misses
		@human.board.load_spaces
		
		space = Space.new("C3")
		@human.board.set_space_as_occupied(space)

		target_space = Space.new("B1")
		@human.board.check_for_hits(target_space)
		# binding.pry

		assert_equal "M", @human.board[:row_B][0].status
	
	end

	def test_feature
		skip
		@human.board.load_spaces
		space = Space.new("C3")
		@human.board.set_space_as_occupied(space)
		
		first_target_space = Space.new("B1")
		@human.board.check_for_hits(first_target_space)
		
		next_target_space = Space.new("C3")
		@human.board.check_for_hits(next_target_space)

		binding.pry
		# @board.display_board =>
		#
		# ===========
		# . 1 2 3 4
		# A
		# B M
		# C     H
		# D
		# ===========

		# @board.check_for_hits(Space.new("C4"))
		# => "M"
		#
		# @board.display_board =>
		#
		# ===========
		# . 1 2 3 4
		# A
		# B M
		# C     H M
		# D
		# ===========

	end

end