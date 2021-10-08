require 'game'

describe Game do

  subject(:mittens) { double(:playerM, hit_points: 60) }
  subject(:charlotte) { double(:playerC, hit_points: 60) }
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

  describe "#current_player" do

    it "display the current turn" do
      expect(new_game.current_player).to eq mittens
    end

    
  end

  describe "#switch_turn" do
    it "should switch turns" do
      new_game.switch_turn
      expect(new_game.current_player).to eq charlotte
    end
  end

  describe "#current_receiver" do
    it "should give whoever is not currently playing" do
      expect(new_game.current_receiver).to eq charlotte
      new_game.switch_turn
      expect(new_game.current_receiver).to eq mittens
    end
  end

  describe "#winner" do
    it "should not return anything when player hp isnt 0" do
      expect(new_game.winner).to eq nil
    end

    it "should return winner when a player hits 0 hp" do
      allow(charlotte).to receive(:hit_points).and_return(0)
      expect(new_game.winner).to eq mittens
    end
  end



  # context "player hp hits zero" do
  #   new_game

end
