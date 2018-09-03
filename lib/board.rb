class Board 
  attr_accessor :board

  def initialize(all_spaces_array)
    @all_spaces_array = all_spaces_array
    @board = {}
  end

  def load_spaces
    @board[:row_A] = @all_spaces_array[0..3]
    @board[:row_B] = @all_spaces_array[4..7]
    @board[:row_C] = @all_spaces_array[8..11]
    @board[:row_D] = @all_spaces_array[12..15]
    @board
  end

  def set_space_as_occupied(space)
    row_symbol = "row_#{space.coordinates[0]}".to_sym
    target_space = @board[row_symbol][space.coordinates[1].to_i - 1]
    target_space.occupied = true
  end

  def check_for_hits(space)
    @space = space
    row_symbol = "row_#{@space.coordinates[0]}".to_sym
    target_space = @board[row_symbol][@space.coordinates[1].to_i - 1]
    if target_space.occupied
      target_space.status = "H"
    else 
      target_space.status = "M"
    end
    
  end
  

  def display_board

    a1 = @board[:row_A][0].status
    a2 = @board[:row_A][1].status
    a3 = @board[:row_A][2].status
    a4 = @board[:row_A][3].status

    b1 = @board[:row_B][0].status
    b2 = @board[:row_B][1].status
    b3 = @board[:row_B][2].status
    b4 = @board[:row_B][3].status


    c1 = @board[:row_C][0].status
    c2 = @board[:row_C][1].status
    c3 = @board[:row_C][2].status
    c4 = @board[:row_C][3].status

    d1 = @board[:row_D][0].status
    d2 = @board[:row_D][1].status
    d3 = @board[:row_D][2].status
    d4 = @board[:row_D][3].status

    puts "==========="
    puts ". 1 2 3 4  "
    puts "A #{a1} #{a2} #{a3} #{a4}" # use string
    puts "B #{b1} #{b2} #{b3} #{b4}" # literals
    puts "C #{c1} #{c2} #{c3} #{c4}" # to fill
    puts "D #{d1} #{d2} #{d3} #{d4}" # out grid
    puts "==========="
  end

end
