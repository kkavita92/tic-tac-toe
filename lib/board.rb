class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
    @mark = 'X'
  end

  def play(move)
    x, y = convert_move_to_coordinate(move)
    set_value(x, y, @mark)
  end

  def switch_player
    @mark == 'X' ? @mark = 'O' : @mark = 'X'
  end

  def set_value(x, y, move)
    @grid[x][y] = move
  end

  def convert_move_to_coordinate(move)
    mapping = {
        "1" => [0, 0],
        "2" => [1, 0],
        "3" => [2, 0],
        "4" => [0, 1],
        "5" => [1, 1],
        "6" => [2, 1],
        "7" => [0, 2],
        "8" => [1, 2],
        "9" => [2, 2]
      }
      mapping[move]
  end



end
