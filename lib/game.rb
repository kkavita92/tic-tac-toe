require_relative 'board'

class Game

  def initialize(board = Board)
    @board = board.new
    @player = 'X'
  end

end
