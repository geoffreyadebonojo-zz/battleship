require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/space'

class SpaceTest < Minitest::Test
  def setup
    @space = Space.new(:A1)
  end

  def test_it_exists
    assert_instance_of Space, @space
  end

  def test_it_has_attributes
    space = Space.new(:B4)
    assert_equal :B4, space.name
  end

  def test_it_has_row_and_column
    space = Space.new(:D3)
    assert_equal "D", space.row
    assert_equal "3", space.column
  end

  def test_it_begins_with_occupancy_and_status
    assert_equal false, @space.occupied
    assert_equal "~", @space.status
  end

  def test_status_mutability
    space = Space.new(:C1)

    space.occupied = true
    assert_equal true, space.occupied

    space.status = "~"
    assert_equal "~", space.status
  end


end
