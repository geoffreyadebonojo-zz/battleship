require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/ship'
require './lib/space'

class GameTest < Minitest::Test

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

    human = Player.new
    computer = Player.new
    board = Board.new(@all_spaces)
    @game = Game.new(human, computer, board)
   
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_has_players
    assert_instance_of Player, @game.player_1
    assert_instance_of Player, @game.player_2
  end

  def test_it_can_make_player_guesses
    guess_1 = Space.new("A2")
    guess_2 = Space.new("B4")
    guess_3 = Space.new("C1")

    assert_equal [guess_1], @game.player_1_guesses(guess_1)
    assert_equal [guess_1, guess_2], @game.player_1_guesses(guess_2)
  end

  def test_it_holds_board
    # assert_instance_of {}, @game.board
    @game.board.load_spaces
    assert_instance_of Board, @game.board
  end

  
end