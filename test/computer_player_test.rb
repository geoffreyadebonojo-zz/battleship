require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_player'
require './lib/space'
require './lib/board'
class ComputerPlayerTest < Minitest::Test

  def setup
    all_spaces = [
      @space_A1 = Space.new("A1"),
      @space_A2 = Space.new("A2"),
      @space_A3 = Space.new("A3"),
      @space_A4 = Space.new("A4"),
  
      @space_B1 = Space.new("B1"),
      @space_B2 = Space.new("B2"),
      @space_B3 = Space.new("B3"),
      @space_B4 = Space.new("B4"),
  
      @space_C1 = Space.new("C1"),
      @space_C2 = Space.new("C2"),
      @space_C3 = Space.new("C3"),
      @space_C4 = Space.new("C4"),
      
      @space_D1 = Space.new("D1"),
      @space_D2 = Space.new("D2"),
      @space_D3 = Space.new("D3"),
      @space_D4 = Space.new("D4")]
    board = Board.new(all_spaces)
    @computer = ComputerPlayer.new(board)
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

  def test_it_doesnt_false_positive_for_repeats
    space_1 = Space.new("A3")
    space_2 = Space.new("B3")
    @computer.choose(space_1)
    assert_equal false, @computer.already_chosen?(space_2)
  end

end