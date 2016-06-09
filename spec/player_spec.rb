require 'player'

describe Player do
  subject(:player) { described_class.new('Van') }

  it 'returns the name of the player' do
    expect(player.name).to eq('Van')
  end

  describe '#hit points' do
    it 'displays default hit points' do
      expect(player.hit_points).to eq 60
    end
  end

  describe '#attack' do
    let(:player2) { described_class.new('Sophie') }
    it 'reduces an opponent\'s hit points' do
      expect {player.attack(player2)}.to change {player2.hit_points}.by(-10)
    end
  end
end
