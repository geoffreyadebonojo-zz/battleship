class Ship
  
  attr_reader :type, :coordinates

  def initialize(type)
    @type = type
  end

  def place(space)
    @coordinates = space
  end

end