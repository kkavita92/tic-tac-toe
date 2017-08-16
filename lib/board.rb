class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
  end

  def print_board
    @grid.each do |row|
      puts row.map { |cell| cell == " " ? "-" : cell }.join(" ")
    end
  end

  def set_value(x, y, move)
    @grid[y][x] = move
  end

end
