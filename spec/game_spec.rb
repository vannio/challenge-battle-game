require "game"

describe Game do
  subject(:game) { described_class.new }

  describe '#attack' do
    let(:player) { spy(:player) }

    it 'reduces an opponent\'s hit points' do
      game.attack(player)
      expect(player).to have_received(:receive_damage)
    end
  end
end
