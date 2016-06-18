require 'player'

describe Player do
  subject(:player) { described_class.new('Van') }

  it 'returns the name of the player' do
    expect(player.name).to eq('Van')
  end

  describe '#hit points' do
    it 'displays default hit points' do
      expect(player.hit_points).to eq described_class::HIT_POINTS
    end
  end

  describe '#receive damage' do
    it 'removes hit points from player' do
      allow(Kernel).to receive(:rand).and_return(10)
      expect { player.receive_damage }.to change { player.hit_points }.by(-10)
    end
  end
end
