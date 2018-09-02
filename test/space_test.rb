require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/space'

class SpaceTest < Minitest::Test
  
  def setup
    @space = Space.new("A2")
  end

  def test_it_exists
    assert_instance_of Space, @space
  end

  def test_it_reads_cow_and_col
    assert_equal 0, @space.row
    assert_equal 1, @space.col
  end

  def test_it_starts_blank
    assert_equal "blank", @space.status
  end

  def test_it_can_get_hit
    @space.status = "hit"
    assert_equal "hit", @space.status = "hit"
  end

  def test_it_can_get_missed
    assert_equal "miss", @space.status = "miss"
  end 

  def test_it_starts_unoccupied
    assert_equal false, @space.occupied
  end

  def test_it_can_hold_ship
    skip
  end



end