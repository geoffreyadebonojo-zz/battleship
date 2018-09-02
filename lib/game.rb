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

  def player_1_guesses(space)
    @player_1.choose(space)
    @player_1.all_choices
  end

  def player_2_guesses(space)
    @player_2.choose(space)
    @player_2.all_choices
  end


end