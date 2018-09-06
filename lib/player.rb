class Player
  attr_reader :board, :shots

  def initialize(board)
    @board = board
    @shots = []
  end

              
  def ship(one, two, three= nil)
    one.occupied = true
    two.occupied = true
  end
              #A2
  def shoot(space)
    @shots << space
  end

  def to_index(space)
    baseline = @board.hash[:A0]
    letters = ["A", "B", "C", "D"]
    r = letters.index(space.row)
    c = space.column.to_i
    return [r, c]
  end # returns index positions [r, c]

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
  end # => returns space object

  def adjacents(target)

    r = to_index(target)[0]
    c = to_index(target)[1]

    center = [r,c]

    west = [r, c-1]
    east = [r, c+1]
    north = [r-1, c]
    south = [r+1, c]

    neighbors =[]
    if r > 0
      neighbors << to_space(north)
    end

    if r < 3
      neighbors << to_space(south)
    end

    if c > 0
      neighbors << to_space(west)
    end

    if c < 3
      neighbors << to_space(east)
    end
    
    return neighbors.compact
  end # return array of cells

  def board_setup

    puts "place ship HEAD on space (A0..D3)"
    print ">"
    r1 = gets.chomp.to_sym
    
    puts "place ship TAIL"
    head = @board.hash[r1]
    options = adjacents(head).map do |space|
      space.name
    end
    p options
    print ">"
    r2 = gets.chomp.to_sym
    tail = @board.hash[r2]

    ship(head, tail)

    puts "ship placed"
    
  end

end
