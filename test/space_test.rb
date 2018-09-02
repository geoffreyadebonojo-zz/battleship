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
    @space.occupied = true
    assert_equal "H", @space.check_hit
  end

  def test_it_can_get_missed
    @space.occupied = false
    assert_equal "M", @space.check_hit
  end 

  def test_it_starts_unoccupied
    assert_equal false, @space.occupied
  end

end