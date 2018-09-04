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
    assert_equal " ", @space.status
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

  def test_it_can_find_neighbors
    @space_A3 = Space.new("A3")
    @space_B3 = Space.new("B3")
    @space_C3 = Space.new("C3")
    @space_B2 = Space.new("B2")
    @space_B4 = Space.new("B4")
   
    expected = [@space_A3, @space_C3, @space_B2, @space_B4].map do |space|
      space.coordinates.to_sym
    end

    actual = @space_B3.find_neighbors.map do |space|
      space.coordinates.to_sym
    end
    
    assert_equal expected, actual 
  end

end