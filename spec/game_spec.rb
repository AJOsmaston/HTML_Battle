require 'game'

describe Game do

  subject(:mittens) { double(:playerM) }
  subject(:charlotte) { double(:playerC) }
  subject(:new_game) { Game.new(mittens, charlotte) }

  describe "creating game" do
    it "has player 1" do
      expect(new_game.player_1).to eq mittens

    end

    it "has player 2" do
      expect(new_game.player_2).to eq charlotte

    end
  end
      

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      new_game.attack(mittens)
    end
  end

  describe "#current_turn" do

    it "display the current turn" do
      expect(new_game.current_turn).to eq mittens
    end

    
  end

  describe "#switch_turn" do
    it "should switch turns" do
      new_game.switch_turn
      puts "SWITCH TURN"
      puts new_game.current_turn 
      expect(new_game.current_turn).to eq charlotte
    end
  end
end
