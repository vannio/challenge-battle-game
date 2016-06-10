require "game"

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#players' do
    it 'should have two players by default' do
      expect(game.players.length).to eq 2
    end
  end

  describe '#attack' do
    let(:player) { spy(:player) }

    it 'reduces an opponent\'s hit points' do
      game.attack(player)
      expect(player).to have_received(:receive_damage)
    end
  end
end
