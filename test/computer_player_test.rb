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
  
  


end