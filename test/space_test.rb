require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/space'

class SpaceTest < Minitest::Test
  
  def setup
    @space = Space.new
  end

  def test_it_exists
    assert_instance_of Space, @space
  end

  def test_it_starts_blank
    assert_equal "blank", @space.status
  end


end