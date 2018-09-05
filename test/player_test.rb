require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'
require './lib/space'


class PlayerTest < Minitest::Test
  def setup
    board = Board.new
    @player = Player.new(board)
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_it_has_board_as_attribute
    assert_instance_of Board, @player.board
  end

  def test_player_can_interact_with_board
    @player.board.hash[:A0].occupied = true
    @player.board.hash[:A0].status = "H"

    assert_equal true, @player.board.hash[:A0].occupied
    assert_equal "H", @player.board.hash[:A0].status
  end

  def test_ship_is_just_an_array_of_two_spaces
    @player.ship("A2", "A3")
    assert_equal true, @player.board.hash[:A2].occupied
    assert_equal true, @player.board.hash[:A3].occupied
  end

  def test_it_shoots
    @player.shoot("A1")
    assert_equal [:A1], @player.shots
    @player.shoot("A2")
    assert_equal [:A1, :A2], @player.shots
  end

  def test_it_can_convert_between_formats
    target = @player.board.hash[:B3]
    assert_equal [1, 3], @player.to_index(target)
    
    target_indeces = @player.to_index(target)
    assert_equal target, @player.to_space(target_indeces)
  end

  def test_it_can_choose_adjacents
    # skip
    b3 = @player.board.hash[:B3]
    
    a3 = @player.board.hash[:A3]
    c3 = @player.board.hash[:C3]
    b2 = @player.board.hash[:B2]
    b4 = @player.board.hash[:B4]

    expected = [a3, c3, b2]

    assert_equal expected, @player.adjacents(b3)
  end

end
