class Player
  attr_reader :board, :shots

  def initialize(board)
    @board = board
    @shots = []
  end

              #A2        #A3
  def ship(space_one, space_two)

    one = space_one.to_sym
    two = space_two.to_sym

    @board.hash[one].occupied = true
    @board.hash[two].occupied = true

  end

              #A2
  def shoot(space)
    @shots << space.to_sym
  end

end
