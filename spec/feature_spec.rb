require './lib/board'

board = Board.new
board.play("1")
board.play("2")
board.play("3")

p board.grid
p board.is_win?('X')
