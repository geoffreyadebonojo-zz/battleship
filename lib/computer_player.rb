class ComputerPlayer

  attr_reader   :all_choices
  attr_accessor :ships

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

  def auto_choose
    random_row = rand(4)
    if random_row == 0
      random_row = "A"
    elsif random_row == 1
      random_row = "B"
    elsif random_row == 2
      random_row = "C"
    else random_row == 3
      random_row = "D"
    end
    random_col = (rand(4) + 1).to_s
    random_coordinates = random_row + random_col
    return @current_choice = Space.new(random_coordinates)
  end

  def already_chosen?(guess)
    if @all_choices.include?(guess)
      true
    else
      false
    end
  end



end