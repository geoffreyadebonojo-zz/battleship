class Ship
  
  def initialize(type)
    @type = type
  end

  def set_piece(head_space)
    head_space.occupied = true
    # @tail_space.occupied = true
  end 
    

end