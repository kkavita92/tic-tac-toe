require './lib/board'

board = Board.new
board.play("1")
board.switch_player
board.play("6")
board.switch_player
board.play("4")
board.switch_player
board.play("2")
p board.grid
