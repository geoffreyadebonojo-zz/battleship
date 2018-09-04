require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/space'
require './lib/ship'

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_choices_starts_empty
    assert_equal [], @player.all_choices
  end

  def test_it_can_choose
    space = Space.new("A2")
    @player.choose(space)
    assert_equal [space], @player.all_choices
  end

  def test_it_can_choose_several_times
    space_A1 = Space.new("A1")
    space_A2 = Space.new("A2")
    space_A3 = Space.new("A3")
    space_A4 = Space.new("A4")
    @player.choose(space_A1)
    @player.choose(space_A2)
    @player.choose(space_A3)
    @player.choose(space_A4)

    expected = [space_A1, space_A2, space_A3, space_A4]
    assert_equal expected, @player.all_choices
  end

  def test_it_can_most_recent
    space_A1 = Space.new("A1")
    space_A2 = Space.new("A2")
    space_A3 = Space.new("A3")
    space_A4 = Space.new("A4")
    @player.choose(space_A1)
    @player.choose(space_A2)
    @player.choose(space_A3)
    @player.choose(space_A4)

    assert_equal space_A4, @player.all_choices.last
  end

  def test_it_starts_without_ships
    assert_equal [], @player.ships
  end

  def test_it_can_add_ships_to_fleet
    submarine = Ship.new("submarine")
    destroyer = Ship.new("destroyer")
    @player.add_ship(submarine)
    assert_equal [submarine], @player.ships
    @player.add_ship(destroyer)
    assert_equal [submarine, destroyer], @player.ships
  end

  def test_it_can_place_ships_on_board
    skip
    submarine = Ship.new("submarine")
    destroyer = Ship.new("destroyer")
    @player.add_ship(submarine)
    @player.add_ship(destroyer)
    
    # binding.pry
    # @player.place_ships
    # => "enter the two character location e.g.(A3, B4, D1)"
    # "to place your submarine"
    # >A2
    # Set tail of ship:
    # ["B2", "A1", "A3"]
    # >A1
    # => A1
  end

  

end