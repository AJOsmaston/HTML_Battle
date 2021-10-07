require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_turn = player1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @current_turn == @player_1
      @current_turn = @player_2
    else
      @current_turn = @player_1
    end

  end

end
