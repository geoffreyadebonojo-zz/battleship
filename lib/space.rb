class Space

  attr_accessor :status, :occupied, :coordinates

  def initialize(coordinates, status= "blank", occupied= false)
    @status = status
    @occupied = occupied
    @coordinates = coordinates
  end

  def check_hit
    " "
    if @occupied == true
      "H"
    elsif @occupied == false
      "M"
    end
  end

  def row
    case @coordinates[0]
    when "A"
      0
    when "B"
      1
    when "C"
      2
    when "D"
      3
    end
  end

  def col
    @coordinates[1].to_i - 1
  end

end