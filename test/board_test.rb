require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
	def setup
		@board = Board.new
	end
	
	def test_it_exists
		assert_instance_of Board, @board
	end

	def test_all_cells
		@board.spaces.each do |space|
			assert_instance_of Space, space
		end
	end


end