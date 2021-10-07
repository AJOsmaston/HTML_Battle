require 'game'

describe Game do

  subject(:mittens) { double(:player) }
  subject(:charlotte) { double(:player) }
  subject(:new_game) { Game.new(mittens, charlotte) }

  describe "creating game" do
    it "has player 1" do
      expect(new_game.player1).to eq mittens

    end

    it "has player 2" do
      expect(new_game.player2).to eq charlotte

    end
      

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      new_game.attack(mittens)
    end
  end
end
