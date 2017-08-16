require_relative 'board'
require_relative 'rules'

class Game

  attr_reader :board

  def initialize(board = Board)
    @board = board.new
    @rules = Rules.new(@board)
    @marker = 'X'
  end

  def play(move)
    x, y = convert_move_to_coordinate(move)
    @board.set_value(x, y, @marker)
    is_win?(@marker) ? game_over_message : switch_player
  end

  private

  def switch_player
    @marker == 'X' ? @marker = 'O' : @marker = 'X'
    p "It's #{@marker} turn now"
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
    @rules.winning_positions.each do |position|
      return true if position == [marker, marker, marker]
    end
    false
  end

  def game_over_message
    p 'Game is over'
  end

end
