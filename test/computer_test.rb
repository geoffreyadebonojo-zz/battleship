require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'

class ComputerPlayerTest < Minitest::Test

  def setup
    board = Board.new
    @computer = ComputerPlayer.new(board)
  end

  def test_it_exists
    assert_instance_of ComputerPlayer, @computer
  end

  def test_attributes
    assert_instance_of Board, @computer.board
  end

end