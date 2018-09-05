class Space
  attr_reader :name, :row, :column
  attr_accessor :occupied, :status

  def initialize(name)
    @name = name
    @row = name.to_s[0]
    @column = name.to_s[1]
    @occupied = false
    @status = "~" # blank " "
  end


end
