class Ship
  
  attr_reader :type, :head_coordinates, :tail_coordinates

  def initialize(type)
    @type = type
    @head_coordinates = nil
    @tail_coordinates = nil
  end

  def place_on(head)
    @head_coordinates = head
    head.occupied = true
    #and any cells BETWEEN THEM..?
  end

  def possible_tails(head)
    
    valid_spaces = head.find_neighbors.map do |space|
      space.coordinates
    end
    
    case head.coordinates[0] 
    when "A"
      col = 0
    when "B"
      col = 1
    when "C"
      col = 2
    when "D"
      col = 3
    end
    row = (head.coordinates[1]).to_i - 1
    
    return valid_spaces
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