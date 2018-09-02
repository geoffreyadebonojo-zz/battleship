class Player
  attr_reader :all_choices, :ships

  def initialize
    @all_choices = []
    @ships = []
  end

  def choose(chosen_space)
    @all_choices << chosen_space
  end

  def add_ship(ship)
    @ships << ship
  end
end

#human = Player.new
#computer = Player.new