require './lib/board'

class Game

  attr_reader :player_1, :player_2

  def initialize(human_player, computer_player)
    @player_1 = human_player
    @player_2 = computer_player
  end

  def player_1_guesses(space)
    @player_1.choose(space)
    @player_1.all_choices
  end

  def player_2_guesses(space)
    @player_2.choose(space)
    @player_2.all_choices
  end

  def player_1_ship_layout
    @player_1.build_fleet
    
  end

  def player_2_ship_layout
    @player_2.auto_build_fleet
  end


end