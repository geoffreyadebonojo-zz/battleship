class Space

  attr_accessor :status, 
                :occupied, 
                :coordinates # "B3"
                

  def initialize(coordinates, status= " ", occupied= false)
    @status = status
    @occupied = occupied
    @coordinates = coordinates
    
  end

  def check_hit
    " "
    if @occupied == true
      @status= "H"
    elsif @occupied == false
      @status= "M"
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

  def convert(x,y)
                                #(1,2)
    case x
    when 0
      "A" + (y+1).to_s
    when 1
      "B" + (y+1).to_s
    when 2
      "C" + (y+1).to_s
    when 3
      "D" + (y+1).to_s
    end
  end

  def find_neighbors
    @neighbors = []
    if row-1 >= 0 
      @north = Space.new(convert(row-1, col))
      @neighbors << @north
    end
    if row+1 <= 4
      @south = Space.new(convert(row+1, col))
      @neighbors << @south
    end
    if col-1 >= 0
      @east = Space.new(convert(row, col-1))
      @neighbors << @east
    end
    if col+1 <= 4
      @west = Space.new(convert(row, col+1))
      @neighbors << @west
    end
    
  end

end
