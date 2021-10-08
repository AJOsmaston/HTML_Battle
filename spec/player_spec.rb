describe Player do
  subject(:charlotte) { Player.new('Charlotte') }
  subject(:mittens) { Player.new('mittens') }

  describe '#name' do
    it "returns the name" do
      expect(charlotte.name).to eq("Charlotte")
    end
  end

  describe '#hit-points' do
    it 'returns the hit points' do
      expect(charlotte.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive damage' do
    it 'reduces the player hit points' do
      expect { charlotte.receive_damage }.to change { charlotte.hit_points }.by (-10)
    end
  end

  describe "alive?" do
    it "should be false if hp reaches 0" do
      allow(charlotte).to receive(:hit_points).and_return(0)
      puts "alive?"
      puts charlotte.hit_points
      expect(charlotte.alive?).to eq false
    end
  end
end
