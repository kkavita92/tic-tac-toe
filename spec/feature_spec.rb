require './lib/board'
require './lib/game'

game = Game.new
game.play("1")
game.play("2")
game.play("4")
game.play("3")
game.play("7")

p game.board.grid
p game.board.print_board
