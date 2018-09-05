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


  def to_index(space)
    baseline = @board.hash[:A0]
    letters = ["A", "B", "C", "D"]
    r = letters.index(space.row)
    c = space.column.to_i
    return [r, c]
  end

  def to_space(index)
    case index[0]
    when 0
      r = "A"
    when 1
      r = "B"
    when 2
      r = "C"
    when 3
      r = "D"
    end
    c = index[1].to_s
    @board.hash[(r+c).to_sym]
  end

                #Space
  def adjacents(target)

    r = to_index(target)[0]
    c = to_index(target)[1]

    binding.pry


  end # return array of cells

end
