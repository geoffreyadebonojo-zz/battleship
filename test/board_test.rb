require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/space'

class BoardTest < Minitest::Test
  def setup
    @board = Board.new
  end

  def test_it_exists
    assert_instance_of Board, @board
  end

  def test_it_can_generate
    assert_instance_of Hash, @board.hash
  end

  def test_it_can_manipulate_spaces
    @board.hash[:A3].occupied = true
    @board.hash[:A3].status = "H"

    assert_equal true, @board.hash[:A3].occupied
    assert_equal "H", @board.hash[:A3].status
  end

end
