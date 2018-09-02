class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def add_player_1_ships(array_of_ships)
    array_of_ships.each do |ship|
      @player_1.add_ship(ship)
    end
  end

  def add_player_2_ships(array_of_ships)
    array_of_ships.each do |ship|
      @player_2.add_ship(ship)
    end
  end

  def player_1_guesses(space)
    @player_1.choose(space)
    @player_1.all_choices
  end

  def player_2_guesses(space)
    @player_2.choose(space)
    @player_2.all_choices
  end

  def ship_layout
    puts "please choose two ships:"
    puts "(s)ubmarine"
    puts "(d)estoyer"
    puts "(c)arrier"
    puts "(b)attleship"
    
    ships = []
    2.times do |choice|
      choice = gets.chomp.to_s.upcase
      case choice
      when "S" 
        ships << Ship.new("submarine")
      when "D"
        ships << Ship.new("destroyer")
      when "C"
        ships << Ship.new("carrier")
      when "B"
        ships << Ship.new("battleship")
      else
        puts "please enter a valid ship type"
      end
    end

    add_player_1_ships(ships)

    puts player_1.ships
  
  end


end