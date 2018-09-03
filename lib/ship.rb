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

end