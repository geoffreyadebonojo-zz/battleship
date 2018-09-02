require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
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
		@board = Board.new
	end
	
	def test_it_exists
		assert_instance_of Board, @board
	end

	def test_it_loads_spaces
		@board.load_spaces(@all_spaces)
		refute_nil @board.board
	end


end