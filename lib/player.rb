class Player
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
      
    @ships.each do |ship|
      puts "Your fleet:"
      puts ship.type
    end
  end
end

#human = Player.new
#computer = Player.new