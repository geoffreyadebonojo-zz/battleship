class Space

  attr_accessor :status, :occupied

  def initialize(status= "blank", occupied= false)
    @status = status
    @occupied = occupied
  end

end