class Ship
  
  attr_reader :type, :coordinates

  def initialize(type)
    @type = type
    @coordinates = nil
  end

  def place_on(space)
    @coordinates = space
    space.occupied = true
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