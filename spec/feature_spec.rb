require './lib/board'
require './lib/game'

game = Game.new
game.play("3")
game.play("5")
game.play("7")

p game.board.grid
p game.board.print_board
