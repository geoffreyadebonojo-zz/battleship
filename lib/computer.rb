require './lib/player'

class ComputerPlayer < Player
   
  def initialize(board)
    super(board)
  end

  def select_space
    symbol = board.hash.to_a.sample.first
    board.hash[symbol]
  end # return Space

end