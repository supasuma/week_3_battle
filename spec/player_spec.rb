require 'player'

describe Player do
  subject(:dave) {Player.new('Dave')}
  subject(:henry) {Player.new('henry')}

  describe "#name" do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe "#hit_points" do
    it 'returns hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  

end
