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

  def convert_from_xy_coordinates(x,y)
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
    binding.pry
    #col = B => 1
    #row = 3 => 2
                    
    #(col -1)(row) => 0,2
                    # 1,2
    #(col +1)(row) => 2,2

                   
    #(col)(row -1) => 1,1 
                    # 1,2
    #(col)(row +1) => 1,3

    #less than zero?
    #same as self?


  end

end
