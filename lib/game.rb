class Game
  attr_reader :player_1,
              :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_shot(attacker, defender, target)
    attacker.shoot(target)
    current = attacker.shots.last

    if defender.board.hash[current].occupied
      defender.board.hash[current].status = "H"
    else
      defender.board.hash[current].status = "M"
    end
  end

end
