class Game
  COMBINATIONS = {
    'scissors' => 'paper',
    'rock'     => 'scissors',
    'paper'    => 'rock'
  }

  def call(first_move, second_move)
    if first_move == second_move
      "draw"
    else
      "#{first_move} beats #{COMBINATIONS[first_move]}"
    end

  end

end
