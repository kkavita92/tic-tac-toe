require_relative 'board'
require_relative 'rules'
require_relative 'printer'

class Game

  attr_reader :board

  def initialize(board = Board, rules = Rules, printer = Printer)
    @board = board.new
    @rules = rules.new(@board)
    @print = printer.new
    @marker = 'X'
  end

  def play(move)
    update_board(move)
    is_win?(@marker) ? @print.game_over_message : switch_player
  end

  private

  def switch_player
    @marker == 'X' ? @marker = 'O' : @marker = 'X'
    @print.switch_player_message(@marker)
  end

  def update_board(move)
    x, y = convert_move_to_coordinate(move)
    @board.set_value(x, y, @marker)
  end

  def convert_move_to_coordinate(move)
    coordinate_mapping = {
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
      coordinate_mapping[move]
  end

  def is_win?(marker)
    @rules.winning_positions.each do |position|
      return true if position == [marker, marker, marker]
    end
  end

end
