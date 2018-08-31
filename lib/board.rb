class Board 

  def initialize
    @rows = []
    @spaces = []
  end

  def load_rows
    4.times do |x|
      @rows << Space.new()

  def display
    puts "==========="
    puts ". 1 2 3 4  "
    puts "A          "
    puts "B          "
    puts "C          "
    puts "D          "
    puts "==========="
  end

end
