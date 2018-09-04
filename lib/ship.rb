class Ship
  
  attr_reader :type, :head_coordinates, :tail_coordinates

  def initialize(type)
    @type = type
    @coordinates = nil
  end

  def place_on(head, tail)
    @head_coordinates = head
    @tail_coordinates = tail
    head.occupied = true
    tail.occupied = true
    #and any cells BETWEEN THEM..?
  end

  def health_points
    case @type
    when 'submarine'
      1
    when 'destroyer'
      2
    when 'carrier'
      3
    when 'battleship'
      4
    end
  end


    

end