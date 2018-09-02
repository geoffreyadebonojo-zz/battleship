require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/player.rb'
require './lib/space.rb'

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
    space = Space.new(0,0)
    @player.choose(space)
    assert_equal [space], @player.all_choices
  end

  def test_it_can_choose_several_times
    space_A1 = Space.new(0,0)
    space_A2 = Space.new(1,0)
    space_A3 = Space.new(2,0)
    space_A4 = Space.new(3,0)
    @player.choose(space_A1)
    @player.choose(space_A2)
    @player.choose(space_A3)
    @player.choose(space_A4)

    expected = [space_A1, space_A2, space_A3, space_A4]
    assert_equal expected, @player.all_choices
  end

end