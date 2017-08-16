class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
  end

  def set_value(x, y, move)
    @grid[x][y] = move
  end

end
