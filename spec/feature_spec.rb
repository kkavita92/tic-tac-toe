require './lib/board'
require './lib/game'
require './lib/rules'
require './lib/printer'

game = Game.new
game.play("1")



p game.board.grid
p game.board.print_board
