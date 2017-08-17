class Printer

  def start_game_message
    puts 'Welcome to Tic Tac Toe'
  end

  def get_move_message
    puts "Where do want to move? <1-9>: "
  end

  def game_over_message
    puts 'Game is over'
  end

  def switch_player_message(player)
    puts "It is #{player}'s' turn now"
    get_move_message
  end

end
