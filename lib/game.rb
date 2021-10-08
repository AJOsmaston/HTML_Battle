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
    @current_player = not_currently_playing
  end

  def current_receiver
    not_currently_playing
  end

  private

  def not_currently_playing
    players = [@player_1, @player_2]
    players.select { |player| player != @current_player }.first
  end


end
