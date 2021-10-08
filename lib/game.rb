require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_player = player1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_player = opposite_player(@current_player)
  end

  def current_receiver
    opposite_player(@current_player)
  end

  def winner
    loser = [@player_1, @player_2].select { |player| player.hit_points == 0}.first
    return opposite_player(loser) if loser
    nil   
  end
  private

  def opposite_player(player)
    players = [@player_1, @player_2]
    players.select { |plr| plr != player }.first
  end


end
