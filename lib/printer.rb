class Printer

  def start_game_message
    puts 'Welcome to Tic Tac Toe'
  end

  def game_over_message(player)
    puts "Game is over. #{player} has won."
  end

  def get_move_message(player)
    puts "It is #{player}'s' turn now"
    puts "Where do want to move? <1-9>: "
  end

end
