require './lib/board'

board = Board.new
board.play("3")
board.play("5")
board.play("7")

p board.grid
p board.print_board
