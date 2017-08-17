class Printer

  def start_game_message
    p 'Welcome to Tic Tac Toe'
  end

  def get_move_message
    p "Where do want to move? <1-9>: "
  end

  def game_over_message
    p 'Game is over'
  end

  def switch_player_message(player)
    p "It is #{player}'s' turn now"
    get_move_message
  end

end
