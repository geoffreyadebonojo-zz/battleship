require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/ship'
require './lib/space'

class GameTest < Minitest::Test

  def setup
    human = Player.new
    computer = Player.new
    @game = Game.new(human, computer)
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_has_players
    assert_instance_of Player, @game.player_1
    assert_instance_of Player, @game.player_2
  end

  def test_add_player_ships
    submarine = Ship.new("submarine")
    destroyer = Ship.new("destroyer")
    carrier = Ship.new("carrier")
    battleship = Ship.new("battleship")

    ships_1 = [submarine, destroyer]
    @game.add_player_1_ships(ships_1)

    ships_2 = [carrier, battleship]
    @game.add_player_2_ships(ships_2)

    assert_equal ships_1, @game.player_1.ships
    assert_equal ships_2, @game.player_2.ships
  end

  def test_it_can_make_player_guesses
    guess_1 = Space.new("A2")
    guess_2 = Space.new("B4")
    guess_3 = Space.new("C1")

    assert_equal [guess_1], @game.player_1_guesses(guess_1)
    assert_equal [guess_1, guess_2], @game.player_1_guesses(guess_2)
  end
end