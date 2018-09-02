class Space

  attr_accessor :status, :occupied

  def initialize(x ,y, status= "blank", occupied= false)
    @status = status
    @occupied = occupied
  end

  def check_hit
    if @occupied == true
    end
  end

end