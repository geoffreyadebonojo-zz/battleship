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
    
    valid_spaces = []
    
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


    binding.pry
    #col = B => 1
    #row = 3 => 2
                    # 1,2
    #(col -1)(row) => 0,2
    #(col +1)(row) => 2,2

                    # 1,2
    #(col)(row -1) => 1,1 
    #(col)(row +1) => 1,3

    
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