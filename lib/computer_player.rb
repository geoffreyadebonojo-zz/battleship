class ComputerPlayer

  attr_reader   :all_choices,
                :board
  attr_accessor :ships

  def initialize(board)
    @board = board
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
  end # => Space.new(x,y)

  def already_chosen?(guess)
    if @all_choices.include?(guess)
      true
    else
      false
    end
  end

  def auto_build_fleet
      
    2.times do |choice|
      case rand(4)
      when 0 
        @ships << Ship.new("submarine")
      when 1
        @ships << Ship.new("destroyer")
      when 2
        @ships << Ship.new("carrier")
      when 3
        @ships << Ship.new("battleship")
      else
        puts "please enter a valid ship type"
      end
    end
    
    puts "................."
    puts "Computer's fleet:"
    @ships.each do |ship|
      puts "*****" # ship.type
    end
    puts " "
  
  end

end