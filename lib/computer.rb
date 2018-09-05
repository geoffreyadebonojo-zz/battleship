require './lib/player'

class ComputerPlayer < Player
   
  def initialize(board)
    super(board)
  end

  def select_space
    symbol = board.hash.to_a.sample.first
    board.hash[symbol]
  end # return Space

  def board_setup

    # puts "place ship HEAD on space (A0..D3)"
    # print ">"
    # r1 = gets.chomp.to_s

    row = [*'A'..'D']
    column = [*'0'..'3']
    symbol = (row.sample + column.sample).to_sym

    r1 = @board.hash[symbol]
    
    r2 = adjacents(r1).sample 
    binding.pry

    
    ship(r1, r2)


    return "board is set"
  end

end