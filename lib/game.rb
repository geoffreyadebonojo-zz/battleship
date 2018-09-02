class Game

  attr_reader :player_1, :player_2

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
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



end