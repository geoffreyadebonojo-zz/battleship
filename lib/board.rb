class Board 
  attr_accessor :board

  def initialize
    @board = {}
  end

  def load_spaces(all_spaces_array)
    @board[:row_A] = all_spaces_array[0..3]
    @board[:row_B] = all_spaces_array[4..7]
    @board[:row_C] = all_spaces_array[8..11]
    @board[:row_D] = all_spaces_array[12..15]
    @board
  end

  def set_space_as_occupied(space)
    row_symbol = "row_#{space.coordinates[0]}".to_sym
    target_space = @board[row_symbol][space.coordinates[1].to_i - 1]
    target_space.occupied = true
  end

  def check_for_hits(space)
    row_symbol = "row_#{space.coordinates[0]}".to_sym
    target_space = @board[row_symbol][space.coordinates[1].to_i - 1]
    if target_space.occupied
      space.status = "hit"
    else target_space.occupied
      space.status = "miss"
    end
    
  end
  

  def display
    puts "==========="
    puts ". 1 2 3 4  "
    puts "A          "
    puts "B          "
    puts "C          "
    puts "D          "
    puts "==========="
  end

end
