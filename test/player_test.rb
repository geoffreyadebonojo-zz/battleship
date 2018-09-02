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
end