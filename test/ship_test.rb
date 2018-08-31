require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test
  def setup
    @ship = Ship.new
  end

  def test_it_exists
    assert_instance_of Ship, @ship
  end

end