require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_player'
require './lib/space'

class ComputerPlayerTest < Minitest::Test

  def setup
    @computer = ComputerPlayer.new
  end

  def test_it_exists
    assert_instance_of ComputerPlayer, @computer
  end
  
  def test_auto_choose_returns_array
    @computer.auto_choose
    assert_instance_of Array, @computer.all_choices
  end

  def test_auto_choose_returns_space_object
    assert_instance_of Space, @computer.auto_choose
  end

  def test_it_can_detect_repeats
    space = Space.new("A3")
    @computer.choose(space)
    assert_equal true, @computer.already_chosen?(space)

  end

end