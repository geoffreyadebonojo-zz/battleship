# player
class Player
  attr_reader :all_choices

  def initialize
    @all_choices = []
  end

  def choose(chosen_space)
    @all_choices << chosen_space
  end
end

#human = Player.new
#computer = Player.new