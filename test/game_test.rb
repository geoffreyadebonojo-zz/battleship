require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'

class GameTest < Minitest::Test

  def setup
    board_1 = Board.new
    board_2 = Board.new

    @player_1 = Player.new(board_1)
    @player_2 = Player.new(board_2)
    @game = Game.new(@player_1, @player_2)
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_has_players_as_attributes
    assert_instance_of Player, @game.player_1
    assert_instance_of Player, @game.player_2
  end

  def test_it_has_two_different_boards
    refute_equal @game.player_1.board, @game.player_2.board
  end

  def test_double_check
    refute_equal @game.player_1.board.hash[:A1], @game.player_2.board.hash[:A1]
  end

  def test_it_can_manipulate_player_1_boards
    @game.player_1.board.hash[:A1].occupied = true
    assert_equal true, @game.player_1.board.hash[:A1].occupied

    assert_equal "~", @game.player_1.board.hash[:A1].status
    @game.player_1.board.hash[:A1].status = "M"
    assert_equal "M", @game.player_1.board.hash[:A1].status
  end

  def test_it_can_manipulate_player_2_boards
    @game.player_2.board.hash[:A1].occupied = true
    assert_equal true, @game.player_2.board.hash[:A1].occupied

    assert_equal "~", @game.player_2.board.hash[:A1].status
    @game.player_2.board.hash[:A1].status = "M"
    assert_equal "M", @game.player_2.board.hash[:A1].status
  end

  def test_it_can_shoot_and_miss
    @game.player_shot(@player_1, @player_2, "A2")

    # miss
    assert_equal "M", @game.player_2.board.hash[:A2].status

    #not hitting our own tiles by mistake
    assert_equal "~", @game.player_1.board.hash[:A2].status
  end

  def test_it_can_shoot_and_hit
    @game.player_2.ship("A2", "A3")

    @game.player_shot(@player_1, @player_2, "A2")

    # hit
    assert_equal "H", @game.player_2.board.hash[:A2].status

    #not hitting our own tiles by mistake
    assert_equal "~", @game.player_1.board.hash[:A2].status
  end




end
