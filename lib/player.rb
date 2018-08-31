# player
class Player
  attr_reader :current_choice

  def initialize
    @current_choice = [] # <= 
  end

  def choose(x,y)
    @current_choice << Space.new(x,y)
  end
end

#human = Player.new
#computer = Player.new