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

  def start_game
    @print.start_game_message
    @print.get_move_message
    play(gets.chomp)
  end

  def play(move)
    update_board(move)
    if is_win?(@marker)
      @print.game_over_message
    else
      switch_player
      get_move
    end
  end

  private

  def get_move
    move = gets.chomp
    play(move)
  end

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
    false
  end

end
