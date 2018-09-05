class Board
  attr_reader :hash

  def initialize
    @hash = generate
  end

  def generate
    hash = {}
    up = [*'a'..'d'].map do |letter|
      letter.upcase
    end
    up.each do |row|
      4.times do |column|
        formatted = (row.to_s + column.to_s).to_sym
        hash[formatted] = Space.new(formatted)
      end
    end
    # binding.pry

    return hash
  end
end
