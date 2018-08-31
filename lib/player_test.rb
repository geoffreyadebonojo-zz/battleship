require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require '/lib/player.rb'
require './lib/space.rb'

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new
  end

  def test_it_exists
    assert_equal Player, @player
  end

  def test_it_can_choose
    @space = Space.new()
    assert_equal 

end