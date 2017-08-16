class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
    @marker = 'X'
  end

  def play(move)
    x, y = convert_move_to_coordinate(move)
    set_value(x, y, @marker)
  end

  def switch_player
    @marker == 'X' ? @marker = 'O' : @marker = 'X'
  end

  def set_value(x, y, move)
    @grid[y][x] = move
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

  def is_win?(marker)
    winning_positions.each do |position|
      return true if position == [marker, marker, marker]
    end
    false
  end

  def winning_positions
    [
      [@grid[0][0], @grid[0][1], @grid[0][2]],
      [@grid[1][0], @grid[1][1], @grid[1][2]],
      [@grid[2][0], @grid[2][1], @grid[2][2]],
      [@grid[0][0], @grid[1][0], @grid[2][0]],
      [@grid[0][1], @grid[1][1], @grid[2][1]],
      [@grid[0][2], @grid[1][2], @grid[2][2]],
      [@grid[0][0], @grid[1][1], @grid[2][2]],
      [@grid[0][2], @grid[1][1], @grid[2][0]], 
    ]
  end

end
