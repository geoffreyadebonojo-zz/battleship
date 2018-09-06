require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'

class ComputerTest < Minitest::Test

  def setup
    board = Board.new
    @computer = Computer.new(board)
  end

  def test_it_exists
    assert_instance_of Computer, @computer
  end

  def test_attributes
    assert_instance_of Board, @computer.board
  end

  def test_it_selects_random
    assert_instance_of Space, @computer.select_space
  end

  def test_board_setup
    assert_equal "board is set", @computer.board_setup
  end

end