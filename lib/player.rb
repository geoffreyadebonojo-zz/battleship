# player
class Player
  attr_reader :current_choice, :all_choices

  def initialize
    @all_choices = []
    @current_choice = @all_choices.last
  end

  def choose(chosen_space)
    @all_choices << chosen_space
  end
end

#human = Player.new
#computer = Player.new