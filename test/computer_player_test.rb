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

  def test_auto_choose_pushes_space_to_array
    @computer.auto_choose
    assert_instance_of Space, @computer.all_choices.last
  end

end