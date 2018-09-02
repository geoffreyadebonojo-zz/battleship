require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require './lib/player'
require './lib/ship'

class GameTest < Minitest::Test

  def setup
    @game = Game.new
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
    ships = [submarine, destroyer]
    @game.add_player_1_ships(ships)

    assert_equal ships, @game.player_1.ships
  end

end