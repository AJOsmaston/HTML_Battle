require 'game'

describe Game do

  subject(:mittens) { double(:player) }
  subject(:new_game) { Game.new }

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      new_game.attack(mittens)
    end
  end
end
