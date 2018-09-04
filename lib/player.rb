class Player
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

  def build_fleet
    puts "please choose two ships:"
    puts "(s)ubmarine"
    puts "(d)estoyer"
    puts "(c)arrier"
    puts "(b)attleship"
    puts "............"
    
    2.times do |choice|
      choice = gets.chomp.to_s.upcase
      case choice
      when "S" 
        @ships << Ship.new("submarine")
      when "D"
        @ships << Ship.new("destroyer")
      when "C"
        @ships << Ship.new("carrier")
      when "B"
        @ships << Ship.new("battleship")
      else
        puts "please enter a valid ship type"
      end
    end
    puts " "
    puts "Your fleet:"
    @ships.each do |ship|
      puts ship.type
    end
  end

  def select_space_on_board(coordinates)
    chosen_space = @board.all_spaces_array.select do |space|
      space.coordinates == coordinates
    end 
  end


  def place_ship
    p "enter the two character location e.g.(A3, B4, D1)"
    p "to place your #{@ships.first.type}"
    print ">"
    @head = gets.chomp.to_s
    select_space_on_board(reply)
    # binding.pry
    @ships[0].place_on("A2")
    puts "Set tail of ship:"
    valid_spaces = @ships[0].possible_tails(@ships[0].head_coordinates)
    print valid_spaces
    puts ""
    print ">"
    reply = gets.chomp.to_s
    @ships[0].place_tail("A3")
    
    # binding.pry
  end
end

#human = Player.new
#computer = Player.new